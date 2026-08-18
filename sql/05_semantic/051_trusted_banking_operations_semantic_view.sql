-- G3.1 one coherent Semantic View with five intentionally disconnected Gold logical tables.
-- No relationships are declared: the five products have different grains and unsafe joins could multiply measures.
USE ROLE SYSADMIN;
USE DATABASE TRUSTED_AI_GOVERNANCE;
USE SCHEMA SEMANTIC;

CREATE OR REPLACE SEMANTIC VIEW TRUSTED_BANKING_OPERATIONS
  TABLES (
    investigation AS TRUSTED_AI_GOVERNANCE.GOLD.PAYMENT_EXCEPTION_INVESTIGATION
      PRIMARY KEY (EXCEPTION_ID)
      WITH SYNONYMS ('payment exceptions','exception cases')
      COMMENT='One eligible trusted payment exception; controlled case drilldown without direct customer, account, contact, address, beneficiary, or user identity.',
    daily_metrics AS TRUSTED_AI_GOVERNANCE.GOLD.PAYMENT_EXCEPTION_DAILY_METRICS
      PRIMARY KEY (EVENT_DATE,PAYMENT_CHANNEL,CURRENCY_CODE,HIGH_VALUE_FLAG)
      WITH SYNONYMS ('daily payment metrics','daily exception metrics')
      COMMENT='One date, channel, currency, and high-value flag. Counts aggregate only across compatible dimensions and monetary amounts remain currency-grained.',
    period_comparison AS TRUSTED_AI_GOVERNANCE.GOLD.PAYMENT_EXCEPTION_PERIOD_COMPARISON
      PRIMARY KEY (PERIOD_NAME,CURRENCY_CODE)
      WITH SYNONYMS ('period comparison','comparison windows')
      COMMENT='One approved comparison window and currency. Windows overlap and must never be summed together or treated as mutually exclusive events.',
    sla_exposure AS TRUSTED_AI_GOVERNANCE.GOLD.SLA_OPERATIONAL_EXPOSURE
      PRIMARY KEY (EXCEPTION_ID)
      WITH SYNONYMS ('SLA cases','SLA exposure')
      COMMENT='One governed exception/SLA case using the authoritative Silver-derived representative SLA.',
    workload AS TRUSTED_AI_GOVERNANCE.GOLD.OPERATIONS_WORKLOAD_SUMMARY
      PRIMARY KEY (REPORTING_DATE,OWNING_TEAM_ID,EXCEPTION_REASON_CODE,PAYMENT_CHANNEL,CURRENCY_CODE)
      WITH SYNONYMS ('team workload','operations workload')
      COMMENT='One reporting date, team, reason, channel, and currency; contains no operations-user identity.'
  )
  FACTS (
    investigation.payment_amount AS investigation.PAYMENT_AMOUNT
      COMMENT='Exception payment amount at one-case grain; never aggregate across currencies without retaining currency.',
    investigation.sla_breach_minutes AS investigation.SLA_BREACH_MINUTES
      COMMENT='Authoritative breach duration for the representative SLA on the case.',
    sla_exposure.breach_minutes AS sla_exposure.SLA_BREACH_MINUTES
      COMMENT='Authoritative SLA breach minutes at one governed exception/SLA-case grain.'
  )
  DIMENSIONS (
    investigation.exception_id AS investigation.EXCEPTION_ID
      WITH SYNONYMS ('exception','payment exception case')
      COMMENT='Stable case identifier exposed only for approved investigation drilldown such as EXC_DEMO_001.',
    investigation.payment_id AS investigation.PAYMENT_ID
      COMMENT='Stable payment identifier needed to correlate an approved exception investigation.',
    investigation.exception_date AS investigation.EXCEPTION_DATE COMMENT='Business date of the trusted exception.',
    investigation.exception_reason AS investigation.EXCEPTION_REASON_CODE WITH SYNONYMS ('reason','exception reason') COMMENT='Approved exception reason code.',
    investigation.exception_status AS investigation.EXCEPTION_STATUS COMMENT='Current governed exception status.',
    investigation.resolution_status AS investigation.RESOLUTION_STATUS COMMENT='Governed resolution state; do not infer closure from any other field.',
    investigation.channel AS investigation.PAYMENT_CHANNEL WITH SYNONYMS ('payment channel') COMMENT='Approved payment channel.',
    investigation.currency AS investigation.CURRENCY_CODE COMMENT='Currency required whenever interpreting or aggregating monetary facts.',
    investigation.high_value AS investigation.HIGH_VALUE_FLAG WITH SYNONYMS ('high value','high-value payment','large payment') COMMENT='Approved Silver-derived high-value indicator.',
    investigation.sla_breached AS investigation.SLA_BREACHED_FLAG WITH SYNONYMS ('SLA breach','breached SLA','SLA violation') COMMENT='Authoritative representative-SLA breach indicator.',
    investigation.escalation_required AS investigation.ESCALATION_REQUIRED_FLAG COMMENT='Authoritative indication that operational escalation is required.',
    investigation.priority AS investigation.INVESTIGATION_PRIORITY WITH SYNONYMS ('investigation priority') COMMENT='Deterministic governed investigation priority, not an ML risk score.',
    investigation.priority_reason AS investigation.PRIORITY_REASON COMMENT='Governed explanation of the deterministic priority signals.',
    investigation.team AS investigation.OWNING_TEAM_NAME WITH SYNONYMS ('operations team','team','operations owner') COMMENT='Accountable operations team; no assigned-user identity is exposed.',
    investigation.primary_period AS investigation.PRIMARY_PERIOD_CLASSIFICATION COMMENT='Mutually exclusive case-level period classification.',
    investigation.synthetic AS investigation.SYNTHETIC_FLAG COMMENT='Confirms synthetic lighthouse data.',

    daily_metrics.event_date AS daily_metrics.EVENT_DATE COMMENT='Metric event date.',
    daily_metrics.channel AS daily_metrics.PAYMENT_CHANNEL COMMENT='Payment channel at the daily metric grain.',
    daily_metrics.currency AS daily_metrics.CURRENCY_CODE COMMENT='Required currency grain; no FX normalization exists.',
    daily_metrics.high_value AS daily_metrics.HIGH_VALUE_FLAG COMMENT='High-value segment at the daily metric grain.',

    period_comparison.period AS period_comparison.PERIOD_NAME COMMENT='Approved overlapping comparison window; always select or group by period.',
    period_comparison.period_start_date AS period_comparison.PERIOD_START_DATE COMMENT='Inclusive approved start date; historical baseline has no lower bound.',
    period_comparison.period_end_date AS period_comparison.PERIOD_END_DATE COMMENT='Inclusive approved comparison-window end date.',
    period_comparison.currency AS period_comparison.CURRENCY_CODE COMMENT='Required currency grain; comparison windows and currencies are not additive.',

    sla_exposure.exception_id AS sla_exposure.EXCEPTION_ID COMMENT='Stable exception identifier for approved SLA case drilldown.',
    sla_exposure.sla_event_id AS sla_exposure.SLA_EVENT_ID COMMENT='Representative governed SLA event identifier.',
    sla_exposure.exception_date AS sla_exposure.EXCEPTION_DATE COMMENT='Business date of the exception.',
    sla_exposure.sla_state AS sla_exposure.SLA_STATE COMMENT='Governed SLA state, including missing-evidence treatment.',
    sla_exposure.sla_breached AS sla_exposure.SLA_BREACHED_FLAG COMMENT='Authoritative SLA breach indicator.',
    sla_exposure.escalation_required AS sla_exposure.ESCALATION_REQUIRED_FLAG COMMENT='Authoritative escalation-required indicator.',
    sla_exposure.unresolved AS sla_exposure.UNRESOLVED_FLAG COMMENT='Governed unresolved-case indicator.',
    sla_exposure.high_value AS sla_exposure.HIGH_VALUE_FLAG COMMENT='Approved high-value context.',
    sla_exposure.priority AS sla_exposure.INVESTIGATION_PRIORITY COMMENT='Deterministic investigation priority.',
    sla_exposure.team AS sla_exposure.OWNING_TEAM_NAME COMMENT='Accountable operations team.',

    workload.reporting_date AS workload.REPORTING_DATE COMMENT='Workload reporting date.',
    workload.team_id AS workload.OWNING_TEAM_ID COMMENT='Stable operations-team identifier.',
    workload.team AS workload.OWNING_TEAM_NAME WITH SYNONYMS ('operations team','team') COMMENT='Operations team name without user-level detail.',
    workload.exception_reason AS workload.EXCEPTION_REASON_CODE COMMENT='Approved exception reason code.',
    workload.channel AS workload.PAYMENT_CHANNEL COMMENT='Payment channel at the workload grain.',
    workload.currency AS workload.CURRENCY_CODE COMMENT='Currency retained as part of the workload grain.'
  )
  METRICS (
    investigation.exception_case_count AS COUNT(investigation.EXCEPTION_ID)
      COMMENT='Count of trusted exception cases at the selected investigation dimensions.',

    daily_metrics.payment_count AS SUM(daily_metrics.PAYMENT_COUNT)
      COMMENT='Governed payment count; sum only across compatible, non-overlapping dimensions.',
    daily_metrics.exception_count AS SUM(daily_metrics.EXCEPTION_COUNT)
      COMMENT='Governed exception count; sum only across compatible, non-overlapping dimensions.',
    daily_metrics.high_value_payment_count AS SUM(daily_metrics.HIGH_VALUE_PAYMENT_COUNT)
      COMMENT='Governed count of trusted high-value payments.',
    daily_metrics.high_value_exception_count AS SUM(daily_metrics.HIGH_VALUE_EXCEPTION_COUNT)
      COMMENT='Governed count of trusted exceptions associated with high-value payments.',
    daily_metrics.exception_rate AS daily_metrics.exception_count/NULLIF(daily_metrics.payment_count,0)
      COMMENT='Exception count divided by payment count; recomputed from additive components and never averaged.',
    daily_metrics.high_value_exception_rate AS daily_metrics.high_value_exception_count/NULLIF(daily_metrics.high_value_payment_count,0)
      WITH SYNONYMS ('high-value exception percentage')
      COMMENT='Percentage of high-value payments that became trusted exceptions. Numerator: high-value exception count. Denominator: high-value payment count.',
    daily_metrics.unresolved_exception_count AS SUM(daily_metrics.UNRESOLVED_EXCEPTION_COUNT)
      COMMENT='Governed unresolved exception count at compatible daily dimensions.',
    daily_metrics.sla_breach_count AS SUM(daily_metrics.SLA_BREACH_COUNT)
      COMMENT='Governed count of exceptions with an authoritative breached SLA indicator.',
    daily_metrics.escalation_required_count AS SUM(daily_metrics.ESCALATION_REQUIRED_COUNT)
      COMMENT='Governed count of exceptions requiring escalation.',

    period_comparison.payment_count AS SUM(period_comparison.PAYMENT_COUNT)
      COMMENT='Payment count for one selected or grouped approved comparison period and currency; never sum overlapping periods.',
    period_comparison.exception_count AS SUM(period_comparison.EXCEPTION_COUNT)
      COMMENT='Exception count for one selected or grouped approved comparison period and currency; never sum overlapping periods.',
    period_comparison.high_value_payment_count AS SUM(period_comparison.HIGH_VALUE_PAYMENT_COUNT)
      COMMENT='High-value payment count for one selected or grouped comparison period.',
    period_comparison.high_value_exception_count AS SUM(period_comparison.HIGH_VALUE_EXCEPTION_COUNT)
      COMMENT='High-value exception count for one selected or grouped comparison period.',
    period_comparison.exception_rate AS period_comparison.exception_count/NULLIF(period_comparison.payment_count,0)
      COMMENT='Recomputed exception rate within each selected comparison period; rates are never averaged.',
    period_comparison.high_value_exception_rate AS period_comparison.high_value_exception_count/NULLIF(period_comparison.high_value_payment_count,0)
      COMMENT='Recomputed high-value exception rate within each selected comparison period; denominator is high-value payment count.',

    sla_exposure.sla_case_count AS COUNT(sla_exposure.EXCEPTION_ID) COMMENT='Count of governed exception/SLA cases.',
    sla_exposure.sla_evidence_case_count AS COUNT_IF(sla_exposure.SLA_EVENT_ID IS NOT NULL) COMMENT='Count of cases with representative SLA evidence; denominator for SLA breach rate.',
    sla_exposure.sla_breach_count AS COUNT_IF(sla_exposure.SLA_BREACHED_FLAG) COMMENT='Count of governed cases with a breached representative SLA.',
    sla_exposure.sla_breach_rate AS sla_exposure.sla_breach_count/NULLIF(sla_exposure.sla_evidence_case_count,0)
      COMMENT='SLA-breached cases divided by cases with representative SLA evidence; zero denominator returns NULL.',
    sla_exposure.unresolved_exception_count AS COUNT_IF(sla_exposure.UNRESOLVED_FLAG) COMMENT='Count of unresolved governed SLA cases.',
    sla_exposure.escalation_required_count AS COUNT_IF(sla_exposure.ESCALATION_REQUIRED_FLAG) COMMENT='Count of governed SLA cases requiring escalation.',

    workload.open_exception_count AS SUM(workload.OPEN_EXCEPTION_COUNT) COMMENT='Open operations workload at compatible dimensions.',
    workload.resolved_exception_count AS SUM(workload.RESOLVED_EXCEPTION_COUNT) COMMENT='Resolved operations workload at compatible dimensions.',
    workload.high_value_open_count AS SUM(workload.HIGH_VALUE_OPEN_COUNT) COMMENT='Open high-value operations workload.',
    workload.sla_breach_open_count AS SUM(workload.SLA_BREACH_OPEN_COUNT) COMMENT='Open workload with breached SLA.',
    workload.escalation_required_open_count AS SUM(workload.ESCALATION_REQUIRED_OPEN_COUNT) COMMENT='Open workload requiring escalation.'
  )
  COMMENT='Version 1.0.0 governed structured intelligence for Trusted Banking Operations. Gold only; disconnected grains prevent fanout; Semantic Result is not AI Context Authorization.'
  WITH TAG (
    TRUSTED_AI_GOVERNANCE.GOVERNANCE.SYNTHETIC_DATA='TRUE',
    TRUSTED_AI_GOVERNANCE.GOVERNANCE.DATA_DOMAIN='OPERATIONS',
    TRUSTED_AI_GOVERNANCE.GOVERNANCE.OWNER_DOMAIN='BANKING_OPERATIONS',
    TRUSTED_AI_GOVERNANCE.GOVERNANCE.PERMITTED_PURPOSE='TRUSTED_BANKING_OPERATIONS_AI',
    TRUSTED_AI_GOVERNANCE.GOVERNANCE.DATA_CLASSIFICATION='OPERATIONAL_SENSITIVE',
    TRUSTED_AI_GOVERNANCE.GOVERNANCE.SENSITIVITY_LEVEL='HIGH'
  );
