# Trusted AI Governance Lighthouse Acceptance Criteria

## 1. Purpose

These criteria define what the completed lighthouse must visibly prove. They are demonstrable, evidence-based, testable, business-relevant, and traceable to approved governance requirements. They define observable outcomes without selecting implementation.

## 2. Acceptance Criterion Identifier Format

Criteria use `AC-<DOMAIN>-NN` with only BRZ, SLV, GLD, SEM, KNW, AI, AGT, INP, OUT, AUD, and E2E. They are test/demo identifiers, not governance requirements.

## 3. Bronze Acceptance Criteria

`AC-BRZ-01` through `AC-BRZ-11` cover provenance, ingestion context, sensitive-data discovery, classification, raw access, lineage, retention, and auditability.

## 4. Silver Acceptance Criteria

`AC-SLV-01` through `AC-SLV-12` cover schema and quality validation, standardization, duplicate handling, quarantine, protection, minimization, lineage, status, and evidence. `AC-SLV-05` is the negative proof that a synthetic invalid record is quarantined and prevented from trusted consumption.

## 5. Gold Acceptance Criteria

`AC-GLD-01` through `AC-GLD-09` cover certification, definitions, ownership, metrics, least privilege, minimization, thresholds, lineage, and fitness for use.

## 6. Semantic Acceptance Criteria

`AC-SEM-01` through `AC-SEM-07` cover registration, approved definitions and metrics, versions, governed sources, inherited authorization, and result traceability.

## 7. Knowledge Acceptance Criteria

`AC-KNW-01` through `AC-KNW-13` cover document identity, owner, classification, authority, version, lifecycle, approval, AI eligibility, retrieval authorization, citations, and instruction isolation. `AC-KNW-07` tests expired-policy exclusion, `AC-KNW-10` tests unauthorized retrieval denial, and `AC-KNW-13` tests prompt injection embedded in a document without allowing content to become executable instruction.

## 8. AI Acceptance Criteria

`AC-AI-01` through `AC-AI-13` cover AI identity, model/prompt versions, approved purpose, ownership, risk, lifecycle, evaluation, groundedness, monitoring, responsible AI evidence, and invocation traceability. No specific LLM is selected.

## 9. Agentic AI Acceptance Criteria

`AC-AGT-01` through `AC-AGT-13` cover Agent identity, purpose, ownership, authorized tools and domains, delegation, execution-time authorization, approval, denials, governance inheritance, and decision traces. `AC-AGT-04` is the unauthorized-tool test, `AC-AGT-09` the restricted-action test, and `AC-AGT-11` the human-approval-required test.

**Recommend ≠ Approve ≠ Execute**

## 10. Input & Prompt Acceptance Criteria

`AC-INP-01` through `AC-INP-06` cover validation, identity propagation, injection detection, malicious instruction resistance, untrusted content, and minimized logging. `AC-INP-02` and `AC-INP-03` provide malicious-input scenarios.

## 11. Output Acceptance Criteria

`AC-OUT-01` through `AC-OUT-11` cover sensitive-output detection, recipient authorization, masking/redaction/blocking, groundedness, citations, unsupported claims, abstention, restricted actions, traceability, and audit logging. `AC-OUT-01` is the sensitive-output test, `AC-OUT-08` the unsupported-answer test, and `AC-OUT-07` the abstention test.

**The final AI/Agent response is a governed artifact.**

## 12. Audit Acceptance Criteria

`AC-AUD-01` through `AC-AUD-20` cover identity and persona, request and source context, Bronze/Silver/Gold/semantic/knowledge evidence, prompt/model and Agent/tool evidence, controls, evaluations, denied actions, final disposition, timestamps, correlation, and full-path reconstruction.

## 13. End-to-End Lighthouse Acceptance Criteria

`AC-E2E-01` through `AC-E2E-10` are mandatory end-to-end proofs for lifecycle traceability, persona-aware governance, sensitive-data protection, inheritance, unauthorized-action prevention, human accountability, grounded response, controlled failure, evidence continuity, and audit reconstruction.

## 14. Acceptance Criteria Table

| Acceptance Criterion ID | Domain | Scenario | Expected Outcome | Required Evidence | Related Requirement IDs | Trust Boundary | Priority |
| ----------------------- | ------ | -------- | ---------------- | ----------------- | ----------------------- | -------------- | -------- |
| AC-BRZ-01 | BRZ | Every ingested record or object must identify its originating source system or approved source interface. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-001 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-02 | BRZ | Bronze ingestion must capture a reliable ingestion timestamp using an approved time standard. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-002 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-03 | BRZ | Every ingestion must carry a batch, run, or equivalent correlation identifier. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-003 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-04 | BRZ | Source lineage must connect landed content to its source identity, extraction context, and ingestion execution. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-004 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-05 | BRZ | Bronze must preserve an immutable or equivalently protected raw representation, subject to approved correction and retention procedures. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-005 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-06 | BRZ | Potentially sensitive data must be identified from Bronze onward and must not await downstream curation for governance. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-006 | TB-01 | P0 — Mandatory Lighthouse Proof |
| AC-BRZ-07 | BRZ | Bronze assets and relevant attributes must receive approved data classifications. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-007 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-08 | BRZ | Bronze assets must carry governance metadata sufficient to establish ownership, provenance, classification, quality context, and permitted use. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-008 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-09 | BRZ | Raw-layer access must be restricted to explicitly authorized identities and purposes. | ALLOW or DENY | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-009 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-10 | BRZ | Bronze assets must carry or reference approved retention and disposition metadata. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-010 | TB-01 | P1 — Important Supporting Proof |
| AC-BRZ-11 | BRZ | Ingestion, access, metadata changes, exceptions, and approved corrections must be auditable. | PASS | Source Evidence; Classification Evidence; Audit Evidence | GOV-BRZ-011 | TB-01 | P1 — Important Supporting Proof |
| AC-SLV-01 | SLV | Data entering Silver must be validated against an approved schema or data contract. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-001 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-02 | SLV | Silver processing must execute defined data-quality validations appropriate to business use. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-002 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-03 | SLV | Data values, formats, identifiers, and reference conventions must be standardized using approved rules. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-003 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-04 | SLV | Duplicate detection and resolution must follow documented, repeatable rules that preserve evidence of the outcome. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-004 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-05 | SLV | Records failing required validation must be quarantined or otherwise isolated from trusted consumption. | QUARANTINE | Data Quality Evidence; Lineage Evidence | GOV-SLV-005 | TB-02 | P0 — Mandatory Lighthouse Proof |
| AC-SLV-06 | SLV | Sensitive data must remain classified and protected throughout Silver processing and storage. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-006 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-07 | SLV | Silver datasets must exclude attributes not required for their approved downstream purposes. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-007 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-08 | SLV | Masking or equivalent presentation controls must be applied according to classification, identity, purpose, and policy. | MASK | Data Quality Evidence; Lineage Evidence | GOV-SLV-008 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-09 | SLV | Access to Silver assets must be policy-driven and least-privilege. | ALLOW or DENY | Data Quality Evidence; Lineage Evidence | GOV-SLV-009 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-10 | SLV | Transformation lineage must connect Silver records and attributes to Bronze inputs and transformation executions. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-010 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-11 | SLV | Silver records or datasets must expose an interpretable quality status and relevant validation outcomes. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-011 | TB-02 | P1 — Important Supporting Proof |
| AC-SLV-12 | SLV | Rejections, quarantines, overrides, remediation, and quality exceptions must produce auditable evidence. | PASS | Data Quality Evidence; Lineage Evidence | GOV-SLV-012 | TB-02 | P1 — Important Supporting Proof |
| AC-GLD-01 | GLD | Gold assets presented as trusted must be certified through an approved governance process. | PASS | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-001 | TB-03 | P1 — Important Supporting Proof |
| AC-GLD-02 | GLD | Gold datasets must use approved and versioned business definitions. | PASS | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-002 | TB-03 | P1 — Important Supporting Proof |
| AC-GLD-03 | GLD | Every Gold asset must have accountable business ownership and designated stewardship. | PASS | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-003 | TB-03 | P1 — Important Supporting Proof |
| AC-GLD-04 | GLD | Business metrics must have governed definitions, calculation rules, ownership, and approval status. | PASS | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-004 | TB-03 | P1 — Important Supporting Proof |
| AC-GLD-05 | GLD | Gold consumption must enforce least privilege for each persona and approved purpose. | ALLOW or DENY | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-005 | TB-03 | P1 — Important Supporting Proof |
| AC-GLD-06 | GLD | Sensitive attributes must be excluded, aggregated, masked, or otherwise minimized unless justified by an approved business need. | MASK | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-006 | TB-03 | P1 — Important Supporting Proof |
| AC-GLD-07 | GLD | Gold certification and continued use must depend on defined quality thresholds and monitored quality status. | PASS | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-007 | TB-03 | P1 — Important Supporting Proof |
| AC-GLD-08 | GLD | Gold data and metrics must be traceable through Silver to relevant Bronze and source context. | PASS | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-008 | TB-03 | P0 — Mandatory Lighthouse Proof |
| AC-GLD-09 | GLD | Each Gold asset must declare its intended business use, limitations, freshness, and fitness-for-use criteria. | PASS | Data Quality Evidence; Lineage Evidence; Authorization Evidence | GOV-GLD-009 | TB-03 | P1 — Important Supporting Proof |
| AC-SEM-01 | SEM | Semantic assets must be registered, owned, versioned, and governed throughout their lifecycle. | PASS | Semantic Evidence; Lineage Evidence; Authorization Evidence | GOV-SEM-001 | TB-04 | P1 — Important Supporting Proof |
| AC-SEM-02 | SEM | Business terms used in semantic assets must reference approved definitions. | PASS | Semantic Evidence; Lineage Evidence; Authorization Evidence | GOV-SEM-002 | TB-04 | P1 — Important Supporting Proof |
| AC-SEM-03 | SEM | Every governed metric must have an accountable owner and steward. | PASS | Semantic Evidence; Lineage Evidence; Authorization Evidence | GOV-SEM-003 | TB-04 | P1 — Important Supporting Proof |
| AC-SEM-04 | SEM | Dimensions, measures, relationships, and calculation logic must be explicitly approved for their intended use. | PASS | Semantic Evidence; Lineage Evidence; Authorization Evidence | GOV-SEM-004 | TB-04 | P1 — Important Supporting Proof |
| AC-SEM-05 | SEM | Semantic assets must use certified or explicitly approved governed data sources. | PASS | Semantic Evidence; Lineage Evidence; Authorization Evidence | GOV-SEM-005 | TB-04 | P1 — Important Supporting Proof |
| AC-SEM-06 | SEM | Semantic access must inherit and must not weaken underlying data authorization and protection policies. | ALLOW or DENY | Semantic Evidence; Lineage Evidence; Authorization Evidence | GOV-SEM-006 | TB-04 | P0 — Mandatory Lighthouse Proof |
| AC-SEM-07 | SEM | A semantic result must be traceable to its semantic asset version, governed definitions, and contributing governed data. | PASS | Semantic Evidence; Lineage Evidence; Authorization Evidence | GOV-SEM-007 | TB-04 | P1 — Important Supporting Proof |
| AC-KNW-01 | KNW | Every knowledge document or object must have a persistent identity. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-001 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-02 | KNW | Every knowledge asset must have an accountable owner or owning function. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-002 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-03 | KNW | Knowledge assets must be classified for sensitivity, confidentiality, and permitted use. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-003 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-04 | KNW | Knowledge assets must declare an authority level appropriate to their source and approval status. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-004 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-05 | KNW | Every retrievable knowledge asset must have a traceable version. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-005 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-06 | KNW | Effective dates must govern when knowledge can be treated as current or authoritative. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-006 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-07 | KNW | Expiry, review, or supersession conditions must prevent stale knowledge from remaining indefinitely eligible. | DENY | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-007 | TB-05 | P0 — Mandatory Lighthouse Proof |
| AC-KNW-08 | KNW | Approval status must be explicit and verifiable before knowledge is treated as authoritative. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-008 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-09 | KNW | AI eligibility must be explicitly determined from approval, classification, purpose, authority, and lifecycle status. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-009 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-10 | KNW | Retrieval must enforce the requesting identity's authorization and the approved business purpose. | DENY | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-010 | TB-05 | P0 — Mandatory Lighthouse Proof |
| AC-KNW-11 | KNW | Retrieved content must be traceable to document identity, version, relevant location, and retrieval event. | PASS | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-011 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-12 | KNW | Obsolete, expired, superseded, or unapproved knowledge must not be represented as current authoritative guidance. | DENY | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-012 | TB-05 | P1 — Important Supporting Proof |
| AC-KNW-13 | KNW | Retrieved content must be treated as evidence or data rather than executable instruction, unless an explicitly governed mechanism authorizes otherwise. | DENY | Knowledge Evidence; Policy Evidence; Authorization Evidence | GOV-KNW-013 | TB-05 | P0 — Mandatory Lighthouse Proof |
| AC-AI-01 | AI | Every AI model or service used by the lighthouse must have an identifiable governed asset record. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-001 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-02 | AI | Every invocation must be traceable to the model and model version or equivalent deployment identifier used. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-002 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-03 | AI | Only models approved for the stated business purpose and risk context may be used. | ALLOW or DENY | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-003 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-04 | AI | System prompts, prompt templates, and other material prompt assets must have persistent identity and versioning. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-004 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-05 | AI | Each AI use must have a documented, approved business purpose and prohibited-use boundaries. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-005 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-06 | AI | AI assets and use cases must have accountable business and technical ownership. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-006 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-07 | AI | AI use cases must receive a documented risk classification appropriate to their purpose, data, users, and potential impact. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-007 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-08 | AI | AI assets must follow an approval lifecycle covering introduction, material change, operation, review, and retirement. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-008 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-09 | AI | AI behavior must be evaluated against approved quality, safety, governance, and business criteria before and during use. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-009 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-10 | AI | Groundedness must be evaluated when responses depend on governed data or knowledge evidence. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-010 | TB-06 | P0 — Mandatory Lighthouse Proof |
| AC-AI-11 | AI | Quality and control performance must be monitored at a frequency appropriate to risk and use. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-011 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-12 | AI | Responsible AI controls must address relevant risks such as harmful content, unfair impact, privacy exposure, misuse, and unreliable recommendations. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-012 | TB-06 | P1 — Important Supporting Proof |
| AC-AI-13 | AI | Every material AI invocation must be traceable to its request, authorization context, prompt version, model version, evidence context, control results, and output. | PASS | AI Evidence; Evaluation Evidence; Policy Evidence | GOV-AI-013 | TB-06 | P1 — Important Supporting Proof |
| AC-AGT-01 | AGT | Every Agent must have a persistent identity and traceable version. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-001 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-02 | AGT | Every Agent must have accountable business and technical owners. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-002 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-03 | AGT | An Agent must operate only within a documented and approved business purpose. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-003 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-04 | AGT | An Agent may invoke only explicitly authorized tools appropriate to its purpose and risk classification. | DENY | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-004 | TB-07; TB-08 | P0 — Mandatory Lighthouse Proof |
| AC-AGT-05 | AGT | An Agent may access only explicitly authorized data domains and must inherit applicable data controls. | ALLOW or DENY | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-005 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-06 | AGT | An Agent may retrieve only explicitly authorized knowledge domains and eligible knowledge assets. | ALLOW or DENY | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-006 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-07 | AGT | Agent execution must preserve the authenticated user's identity, persona, authorization context, and delegated authority. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-007 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-08 | AGT | Every material tool request and result must be traceable to the Agent execution, identity, parameters, authorization decision, and outcome. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-008 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-09 | AGT | Every proposed action must be authorized at execution time against identity, purpose, scope, policy, and relevant context. | DENY | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-009 | TB-07; TB-08 | P0 — Mandatory Lighthouse Proof |
| AC-AGT-10 | AGT | Denied tool calls and actions must produce evidence sufficient to explain the denial without exposing unnecessary sensitive detail. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-010 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-11 | AGT | Material actions must require accountable human approval wherever policy or risk classification requires it. | REQUIRE_APPROVAL | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-011 | TB-07; TB-08 | P0 — Mandatory Lighthouse Proof |
| AC-AGT-12 | AGT | Agent orchestration, tools, and indirect access paths must not bypass enterprise data, knowledge, AI, security, or output governance. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-012 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-AGT-13 | AGT | The Agent decision path must be reconstructable across planning, evidence use, model interactions, tool calls, control decisions, human approvals, and final response. | PASS | Agent Evidence; Tool Evidence; Human Decision Evidence | GOV-AGT-013 | TB-07; TB-08 | P1 — Important Supporting Proof |
| AC-INP-01 | INP | User input and system-provided input must be validated for expected type, size, format, purpose, and prohibited content as appropriate. | PASS | Authorization Evidence; AI Evidence; Audit Evidence | GOV-INP-001 | TB-06 | P1 — Important Supporting Proof |
| AC-INP-02 | INP | Controls must detect, resist, and record prompt-injection attempts appropriate to the interaction risk. | DENY | Authorization Evidence; AI Evidence; Audit Evidence | GOV-INP-002 | TB-06 | P0 — Mandatory Lighthouse Proof |
| AC-INP-03 | INP | Malicious, conflicting, or unauthorized instructions must not override governing policy, system constraints, or user authorization. | DENY | Authorization Evidence; AI Evidence; Audit Evidence | GOV-INP-003 | TB-06 | P1 — Important Supporting Proof |
| AC-INP-04 | INP | Every material interaction must carry verified user identity, persona, entitlement, and purpose context into authorization decisions. | PASS | Authorization Evidence; AI Evidence; Audit Evidence | GOV-INP-004 | TB-06 | P1 — Important Supporting Proof |
| AC-INP-05 | INP | Retrieved or tool-supplied content must be treated as untrusted input where appropriate and must not silently become governing instruction. | PASS | Authorization Evidence; AI Evidence; Audit Evidence | GOV-INP-005 | TB-06 | P1 — Important Supporting Proof |
| AC-INP-06 | INP | Input logging must support traceability while minimizing, masking, or excluding sensitive data not required for evidence. | PASS | Authorization Evidence; AI Evidence; Audit Evidence | GOV-INP-006 | TB-06 | P1 — Important Supporting Proof |
| AC-OUT-01 | OUT | Outputs must be evaluated for sensitive data before release or use. | MASK or REDACT | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-001 | TB-09 | P0 — Mandatory Lighthouse Proof |
| AC-OUT-02 | OUT | Output content and level of detail must be authorized for the recipient's identity, persona, purpose, and context. | ALLOW or DENY | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-002 | TB-09 | P1 — Important Supporting Proof |
| AC-OUT-03 | OUT | Sensitive output must be masked, redacted, blocked, or otherwise protected according to policy. | MASK, REDACT, or DENY | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-003 | TB-09 | P1 — Important Supporting Proof |
| AC-OUT-04 | OUT | Evidence-dependent output must be evaluated for groundedness against the evidence actually available to the invocation. | PASS | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-004 | TB-09 | P1 — Important Supporting Proof |
| AC-OUT-05 | OUT | Material factual claims and recommendations must connect to appropriate supporting evidence or citations where feasible. | PASS | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-005 | TB-09 | P1 — Important Supporting Proof |
| AC-OUT-06 | OUT | Outputs must comply with applicable business, data, AI, security, and communication policies. | PASS | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-006 | TB-09 | P1 — Important Supporting Proof |
| AC-OUT-07 | OUT | The capability must abstain in a controlled manner when evidence, authorization, or confidence is insufficient. | ABSTAIN | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-007 | TB-09 | P0 — Mandatory Lighthouse Proof |
| AC-OUT-08 | OUT | Unsupported claims must be removed, qualified, blocked, or returned for review rather than presented as established fact. | ABSTAIN or FLAG_FOR_REVIEW | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-008 | TB-09 | P0 — Mandatory Lighthouse Proof |
| AC-OUT-09 | OUT | Requests for restricted actions must be denied or routed to an approved human-controlled process. | DENY, ESCALATE, or REQUIRE_APPROVAL | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-009 | TB-09 | P1 — Important Supporting Proof |
| AC-OUT-10 | OUT | Every material output must be traceable to the request, evidence, prompt, model, Agent, tool activity, and control results that produced it. | PASS | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-010 | TB-09 | P1 — Important Supporting Proof |
| AC-OUT-11 | OUT | Output release, suppression, redaction, abstention, and related policy decisions must be audit logged. | PASS | Output Evidence; Authorization Evidence; Evaluation Evidence | GOV-OUT-011 | TB-09 | P1 — Important Supporting Proof |
| AC-AUD-01 | AUD | Evidence must identify the requesting user or service identity. | PASS | Audit Evidence | GOV-AUD-001 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-02 | AUD | Evidence must record the applicable persona, entitlement, and authorization context. | PASS | Audit Evidence | GOV-AUD-002 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-03 | AUD | Evidence must identify or safely represent the request. | PASS | Audit Evidence | GOV-AUD-003 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-04 | AUD | Evidence must identify the relevant source data and source context. | PASS | Audit Evidence | GOV-AUD-004 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-05 | AUD | Evidence must connect the request to applicable Bronze lineage. | PASS | Audit Evidence | GOV-AUD-005 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-06 | AUD | Evidence must identify relevant Silver transformations and quality outcomes. | PASS | Audit Evidence | GOV-AUD-006 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-07 | AUD | Evidence must identify the contributing Gold business data and governed metrics. | PASS | Audit Evidence | GOV-AUD-007 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-08 | AUD | Evidence must identify the semantic asset and version used. | PASS | Audit Evidence | GOV-AUD-008 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-09 | AUD | Evidence must identify each material knowledge document used. | PASS | Audit Evidence | GOV-AUD-009 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-10 | AUD | Evidence must identify the effective version of each material knowledge document. | PASS | Audit Evidence | GOV-AUD-010 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-11 | AUD | Evidence must identify the prompt or prompt asset and version used. | PASS | Audit Evidence | GOV-AUD-011 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-12 | AUD | Evidence must identify the model and model version or equivalent deployment identifier. | PASS | Audit Evidence | GOV-AUD-012 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-13 | AUD | Evidence must identify the Agent and Agent version. | PASS | Audit Evidence | GOV-AUD-013 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-14 | AUD | Evidence must record material tool calls, authorization decisions, parameters where safe, and outcomes. | PASS | Audit Evidence | GOV-AUD-014 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-15 | AUD | Evidence must identify the governance policies and policy versions applied. | PASS | Audit Evidence | GOV-AUD-015 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-16 | AUD | Evidence must record material guardrail and control results. | PASS | Audit Evidence | GOV-AUD-016 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-17 | AUD | Evidence must record relevant evaluation results. | PASS | Audit Evidence | GOV-AUD-017 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-18 | AUD | Evidence must record denied actions and the applicable reason or policy reference. | PASS | Audit Evidence | GOV-AUD-018 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-19 | AUD | Evidence must preserve or securely reference the final response and its output-governance disposition. | PASS | Audit Evidence | GOV-AUD-019 | TB-10 | P1 — Important Supporting Proof |
| AC-AUD-20 | AUD | Evidence must include a reliable timestamp and end-to-end trace or correlation identifier. | PASS | Audit Evidence | GOV-AUD-020 | TB-10 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-01 | E2E | Source-to-Outcome Traceability — A selected synthetic payment exception traces across the full approved lifecycle. | PASS | Source Evidence; Lineage Evidence; Audit Evidence | GOV-BRZ-004; GOV-SLV-010; GOV-GLD-008; GOV-SEM-007; GOV-AUD-020 | TB-01; TB-02; TB-03; TB-04; TB-05; TB-06; TB-07; TB-08; TB-09; TB-10 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-02 | E2E | Persona-Aware Governance — Different approved personas receive policy-appropriate visibility and action rights. | ALLOW or DENY | Authorization Evidence; Audit Evidence | GOV-GLD-005; GOV-OUT-002; GOV-AUD-002 | TB-03; TB-04; TB-06; TB-08; TB-09 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-03 | E2E | Sensitive Data Protection — Sensitive customer information stays protected across data, AI, Agent, and output boundaries. | MASK or REDACT | Classification Evidence; Authorization Evidence; Output Evidence | GOV-BRZ-006; GOV-SLV-006; GOV-GLD-006; GOV-OUT-001; GOV-OUT-003 | TB-01; TB-02; TB-03; TB-06; TB-09 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-04 | E2E | Governance Inheritance — Higher layers do not weaken mandatory lower-layer governance. | PASS | Authorization Evidence; Policy Evidence; Audit Evidence | GOV-SEM-006; GOV-AGT-012 | TB-04; TB-05; TB-06; TB-07; TB-08; TB-09 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-05 | E2E | Unauthorized Action Prevention — An Agent cannot execute a tool or action outside approved authority. | DENY | Agent Evidence; Tool Evidence; Audit Evidence | GOV-AGT-004; GOV-AGT-009; GOV-AGT-010 | TB-07; TB-08; TB-10 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-06 | E2E | Human Accountability — A material action cannot progress without explicit accountable human approval. | REQUIRE_APPROVAL | Human Decision Evidence; Agent Evidence; Audit Evidence | GOV-AGT-011; GOV-AUD-018 | TB-08; TB-10 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-07 | E2E | Grounded Trusted Response — A successful response is supported by governed data and/or eligible knowledge. | PASS | AI Evidence; Knowledge Evidence; Evaluation Evidence; Output Evidence | GOV-AI-010; GOV-OUT-004; GOV-OUT-005 | TB-05; TB-06; TB-09 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-08 | E2E | Controlled Failure — Insufficient evidence, authorization, or policy produces a governed protective outcome. | DENY, MASK, QUARANTINE, ABSTAIN, ESCALATE, or REQUIRE_APPROVAL | Authorization Evidence; Output Evidence; Audit Evidence | GOV-SLV-005; GOV-KNW-012; GOV-OUT-007; GOV-OUT-009 | TB-02; TB-05; TB-08; TB-09; TB-10 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-09 | E2E | Evidence Continuity — Evidence remains correlated across all material trust boundaries. | PASS | Audit Evidence; Lineage Evidence | GOV-AUD-001; GOV-AUD-020 | TB-01; TB-02; TB-03; TB-04; TB-05; TB-06; TB-07; TB-08; TB-09; TB-10 | P0 — Mandatory Lighthouse Proof |
| AC-E2E-10 | E2E | Audit Reconstruction — An auditor reconstructs the material decision path without undocumented assertions. | PASS | Audit Evidence | GOV-AGT-013; GOV-AUD-019; GOV-AUD-020 | TB-10 | P0 — Mandatory Lighthouse Proof |

## 15. Demo Priority

- **P0 — Mandatory Lighthouse Proof:** Essential proof of end-to-end trust, protection, denial, approval, groundedness, or reconstruction.
- **P1 — Important Supporting Proof:** Domain-level proof needed to substantiate the lighthouse.
- **P2 — Extended Demonstration:** Optional breadth beyond the core proof. No P2 criteria are assigned in this initial contract.

All `AC-E2E-*` criteria are P0.

## 16. Expected Governance Outcomes

Only the approved conceptual outcomes are used where relevant: `ALLOW`, `DENY`, `MASK`, `REDACT`, `QUARANTINE`, `ABSTAIN`, `ESCALATE`, `REQUIRE_APPROVAL`, `FLAG_FOR_REVIEW`, `PASS`, and `FAIL`. They are not application enums.

## 17. Acceptance Criteria Quality Principles

- Criteria describe observable behavior and expected evidence.
- Negative scenarios are mandatory, not optional.
- Successful AI answers alone are insufficient proof of governance.
- Controls must demonstrate both allow and deny/protect behavior where relevant.
- Criteria should support future automation where feasible.
- Demo scenarios must remain understandable to business and architecture audiences.
