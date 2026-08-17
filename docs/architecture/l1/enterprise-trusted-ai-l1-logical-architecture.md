# L1 Snowflake Logical Architecture — Enterprise Data & AI Governance for Trusted AI

**Trusted Banking Operations AI Lighthouse**

## 1. Purpose and Architecture Positioning

This L1 architecture decomposes the approved enterprise and reference architecture into Snowflake-aligned logical capabilities and interactions. It is governance-led, implementation-ready, evidence-oriented, and intentionally stops before physical design.

- **L0** answers: **What major enterprise domains create a trusted AI outcome?**
- **Reference Architecture** answers: **What logical governance planes, trust boundaries, and responsibilities make the solution trustworthy?**
- **L1** answers: **Which Snowflake-aligned logical platform capabilities implement those domains and how do they interact?**
- **Future Implementation** will answer: **What exact databases, schemas, tables, roles, policies, services, SQL, Python, configuration, and tests implement the L1 design?**

The governing lifecycle remains **Source → Bronze → Silver → Gold → Semantic/Knowledge → AI → Agent → Output → Audit**.

## 2. L1 Architecture Principles

1. Governance starts at Bronze.
2. Source provenance remains connected to origin.
3. Bronze raw data remains governed and restricted.
4. Silver performs validation, protection, quality, and minimization.
5. Gold exposes certified business-ready information.
6. Semantic access cannot weaken data governance.
7. Knowledge retrieval authorization is separate from AI-context authorization.
8. Only authorized and minimized evidence enters AI context.
9. AI Governance remains distinct from Agentic AI Governance.
10. Agents inherit user and enterprise authorization.
11. Tool and action authorization occurs at execution time.
12. Human approval remains separate from recommendation and execution.
13. Output is governed before release.
14. Evidence remains correlated end to end.
15. No governance bypass path exists.

**Recommend ≠ Approve ≠ Execute**

**The final AI/Agent response is a governed artifact.**

## 3. L1 Snowflake Logical Domains

Exactly ten lifecycle domains define L1. The Enterprise Governance Control Plane is cross-cutting and is not an eleventh domain.

### L1-01 — Source & Landing

Logical sources comprise Customer, Account, Payment, Payment Exception, SLA/Operations, Reference Data, and Enterprise Policy/Procedure Documents. Governed landing may align with Snowflake stages, structured-file and document landing, ingestion metadata, run identifiers, and source-file metadata. No final ingestion tooling, stage, file format, Snowpipe configuration, or statement is selected.

**Source identity and provenance must exist before or at Bronze ingestion.**

### L1-02 — Bronze Governed Raw Data

Bronze logically holds raw structured data, raw document metadata, source/run metadata, ingestion timestamps, and an immutable or equivalently protected raw representation. Snowflake-aligned controls include sensitive-data classification, object/column tags, RBAC, masking-policy applicability, retention metadata, Access History/lineage evidence, and ingestion evidence.

**Governance begins here.** Physical tables, policies, and roles remain deferred.

### L1-03 — Silver Trusted Data

Silver provides schema validation, data-quality rules, normalization, standardization, duplicate handling, invalid-record quarantine, interpretable quality status, sensitive-data minimization, masking/protection, row-level authorization where required, transformation lineage, and remediation evidence. Logical alignment includes governed tables/views, Data Metric Functions or Data Quality Monitoring where appropriate, masking policies, row access policies, classification/tags, RBAC, and lineage metadata.

Release-state-dependent features are implementation considerations, not mandatory L1 dependencies. Domain-specific validation remains project-defined where native monitoring is insufficient.

### L1-04 — Gold Business Data

Logical assets include certified payment-exception facts, governed customer operational context, SLA performance facts, operational-risk indicators, governed dimensions, and business metrics. Certification, ownership/stewardship, approved definitions, metric definitions, minimization, policy-driven access, quality thresholds, and lineage through Silver and Bronze to source apply. Sensitive raw identifiers do not automatically propagate into Gold.

### L1-05 — Semantic Intelligence

**Snowflake Semantic Views** provide the governed structured business-semantic layer: payment-exception, SLA, and customer-operational semantics; metrics; dimensions; relationships; calculation logic; approved definitions; versions; governed Gold sources; inherited privileges; and result traceability.

The structured analysis path is **Natural-language analytical request → governed Semantic View → structured analytical result**. Cortex Analyst or a Cortex Agent structured-data tool may logically access Semantic Views without weakening underlying authorization. No Semantic View, YAML, or DDL is created here.

### L1-06 — Governed Enterprise Knowledge

The logical document path is:

**Enterprise Documents → Governed Document Landing → Document Registry + AI_PARSE_DOCUMENT processing → Governed Parsed Content → Governed Enterprise Knowledge → TB-05 → Governed Retrieval / Cortex Search → TB-06 → AI Context Admission**

Governed Document Landing preserves source identity, provenance, file identity, ingestion context, and persistent document/version references before registration or parsing. It is a logical landing capability, not a physical stage definition.

The **project-governed metadata registry** records document identity, title, source, owner, classification, authority, approval state, version, effective date, expiry/review date, AI eligibility, permitted purpose, applicable authorization scope, and lifecycle state. These fields are governance metadata and are not assumed to be supplied automatically by Snowflake Horizon.

`AI_PARSE_DOCUMENT` operates on governed landed document content—not on the registry. Parsed retrieval units remain correlated to registry metadata through persistent document identity and version and inherit source, provenance, classification, authority/effective context, and retrieval metadata. Final chunking remains deferred. Registry metadata determines whether corresponding parsed content is eligible to join the governed enterprise-knowledge corpus.

#### Cortex Search Authorization Architecture

Cortex Search is treated as an **owner-rights governed retrieval service**, not as a service that automatically inherits each querying user's access rights from the indexed source tables. A user's inability to query an underlying source row does not by itself guarantee that the same content cannot be returned by a Cortex Search Service. **TB-05 is therefore an explicit security boundary implemented independently of underlying source-table authorization.**

The L1 safeguards are:

- **Dedicated least-privilege service ownership:** each service owner has access only to content appropriate for the service's governed purpose; the physical owner role is deferred.
- **Search-corpus segmentation:** sensitivity, permitted purpose, or authorization boundaries may require logically separate governed corpora/services instead of one unrestricted enterprise-wide index; the number of services is deferred.
- **Governance metadata:** searchable content carries filterable classification, authority, approval state, lifecycle status, AI eligibility, permitted purpose, and authorization-scope metadata.
- **Retrieval authorization:** TB-05 evaluates requester identity and business purpose before content is returned. Cortex Search filters contribute to enforcement but are not the complete authorization architecture.
- **AI Context Admission:** TB-06 separately re-evaluates current user, persona, purpose, necessity/minimization, AI-use eligibility, and prompt/system constraints.

**Retrieved ≠ Admitted to AI Context.** Content legitimately returned by governed retrieval is not usable by AI until TB-06 admits it for the current invocation.

### L1-07 — AI Governance & Reasoning

Logical governed AI assets include an AI use-case registry, model/deployment identity and version, prompt identity and version, approved purpose, owner, risk classification, lifecycle approval, evaluation configuration, groundedness results, responsible-AI controls, and invocation trace. Gaps in native metadata are covered by a **project-governed AI metadata registry**; Horizon is not assumed to supply all prompt or use-case governance.

At TB-06, **AI Context Admission** evaluates user identity, persona, purpose, data and knowledge authorization, minimization, current document eligibility, and prompt/system constraints. Only admitted structured and knowledge evidence reaches Snowflake Cortex AI reasoning. No LLM is selected or hard-coded.

### L1-08 — Agentic AI & Controlled Tools

The logical **Trusted Banking Operations Agent**, aligned with **Snowflake Cortex Agents**, has identity, version, owners, approved purpose, user execution context, delegated authority, permitted tools, tool-call authorization, and decision/tool trace.

- **Tool A — Structured Operations Intelligence:** governed Semantic Views through the structured analytical path for exception analysis, SLA metrics, trends, and authorized affected-population analysis.
- **Tool B — Governed Policy Knowledge:** governed Cortex Search retrieval for approved policies, procedures, evidence, and citations.
- **Tool C — Governance Control Check:** project-controlled evaluation of action, user/persona, purpose, sensitive scope, policy, and approval requirement.
- **Tool D — Controlled Action / Escalation:** conceptual creation of escalation, preparation of notification, or routing for approval; no email or transaction execution is implemented.

Material actions pass **Execution-Time Authorization** and, where required, **Human Approval** before controlled execution. **Recommend ≠ Approve ≠ Execute**.

### L1-09 — Output Governance

An explicit **Output Governance Gateway** mediates every Agent response before release. It evaluates recipient authorization, sensitive-data detection, masking/redaction, policy compliance, groundedness, evidence/citations, unsupported claims, abstention, restricted actions, and final disposition.

Only approved conceptual outcomes are used: `ALLOW`, `DENY`, `MASK`, `REDACT`, `ABSTAIN`, `ESCALATE`, `REQUIRE_APPROVAL`, `FLAG_FOR_REVIEW`, `PASS`, and `FAIL`. Snowflake Horizon AI Guardrails may contribute to protection, but native guardrails do not alone satisfy all deterministic and project output-governance requirements.

### L1-10 — Observability, Evidence & Audit

**Snowflake-native evidence** includes Access History, lineage, policy references, classification/tag metadata, quality-monitoring results, Cortex Agent observability, tool traces, and available AI evaluation/monitoring evidence.

**Project governance evidence** correlates requirement, control, execution, decision, evidence, acceptance criterion, trace/correlation ID, investigation, user/persona, action, output disposition, and human approval.

Together they support **Source → Data → Semantic/Knowledge → AI → Agent → Tool → Output → Human Decision → Audit** without unnecessarily duplicating sensitive content.

## 4. Enterprise Governance Control Plane

The cross-cutting plane spans L1-01 through L1-10 and provides:

- **Identity & Access:** Snowflake RBAC, least privilege, and user/role execution context without defining final roles.
- **Classification & Metadata:** Snowflake classification, object/column tags, and project metadata where needed.
- **Data Protection:** masking policies, row access policies where appropriate, governed views, and minimization. Preview-only tag-based row-access behavior is not mandatory.
- **Data Quality:** Data Quality Monitoring/DMFs where appropriate plus project-defined domain validation.
- **Lineage & Access Evidence:** Access History, lineage, and policy-reference evidence.
- **AI Governance:** approved use cases/models, prompt versions, evaluation, groundedness, and responsible-AI controls.
- **Agent Governance:** tool authorization, execution context, delegation, execution authorization, and approval requirements.
- **Output Governance:** AI Guardrails where applicable, deterministic/project policies, and disposition evidence.

## 5. Logical Data and Metadata Zones

| Zone family | Logical zones |
| --- | --- |
| Business Data | Landing; Bronze; Silver; Quarantine; Gold |
| Knowledge | Document Landing; Document Registry; Parsed Content; Retrieval Index/Search Service |
| Governance Metadata | Classification/Tag Metadata; Data Quality Evidence; Business Definitions; AI Asset Registry; Prompt Registry; Agent/Tool Registry; Governance Policy Registry; Control Evidence |
| Audit | Native Snowflake Audit Evidence; AI/Agent Observability; Project Correlation/Audit Evidence |

These are logical zones, not database or schema names.

## 6. L1 Persona-to-Platform Interaction

| Persona | Primary L1 Interaction | Governance Constraint |
| --- | --- | --- |
| Banking Operations Analyst | Governed request, Semantic Views, knowledge retrieval, Agent recommendation | Assigned purpose, minimized data, delegated investigation authority |
| Banking Operations Manager | Recommendation review, evidence review, approval/escalation | Approval limited to delegated authority; execution remains separate |
| Data Steward | Classification, quality, lineage, definitions, Gold/Semantic certification | Sensitive values minimized; stewardship decisions evidenced |
| AI Governance / Model Risk Officer | AI/Agent registries, evaluations, observability, change approval | Independent risk oversight; no operational payment decision |
| Compliance / Risk Officer | Policy metadata, authorization and output decisions, control evidence | Purpose limitation and separation of duties |
| Internal Auditor | Protected native and project evidence; audit reconstruction | Read-only/evidence-focused access and independence |

The table expresses logical interaction, not physical Snowflake roles.

## 7. Trust Boundary Mapping

| Boundary | From | To | Snowflake-Aligned Logical Controls | Evidence |
| --- | --- | --- | --- | --- |
| TB-01 | Source/Landing | Bronze | Provenance, ingestion metadata, classification, restricted RBAC | Source/run, classification, access, lineage |
| TB-02 | Bronze | Silver/Quarantine | Schema/DQ validation, standardization, minimization, masking, quarantine | Rule results, quality status, disposition, lineage |
| TB-03 | Silver | Gold | Certification, definitions, thresholds, ownership, minimization | Certification, quality, definitions, lineage |
| TB-04 | Gold | Semantic View consumption | Semantic approval/version, governed sources, privilege inheritance | Semantic version, access decision, query/result lineage |
| TB-05 | Enterprise Knowledge | Governed Knowledge Retrieval | Registry authority/lifecycle/eligibility filters, retrieval authorization, instruction isolation | Document/version, eligibility, retrieval, passage/citation |
| TB-06 | Semantic/Retrieved Evidence | AI Context Admission | Identity, purpose, authorization, minimization, prompt/model approval | Evidence set, admission result, versions, invocation trace |
| TB-07 | Governed AI | Cortex Agent orchestration | Agent identity/purpose, allowed domains/tools, delegation | Agent/version, plan, tool set, inherited policy |
| TB-08 | Agent | Tool/Action Authorization | Governance Control Check, execution authorization, human approval | Tool/action request, allow/deny/approval, result |
| TB-09 | Agent Recommendation | Output Governance Gateway | Recipient, sensitivity, grounding, citations, policy, abstention | Draft/final reference, checks, disposition |
| TB-10 | Governed Outcome | Correlated Audit Evidence | Completeness, correlation, protection, retention | Final response, controls, human decisions, trace ID |

No new trust boundary is introduced.

## 8. Positive Runtime Flow

> **Why did high-value payment exceptions increase this week, which customers are affected, and what action should operations take?**

1. Operations Analyst identity and purpose context is established.
2. Input Governance validates the interaction.
3. Cortex Agent receives governed request context.
4. Its structured tool accesses approved Semantic Views.
5. The semantic result uses governed Gold data.
6. Its knowledge tool queries Cortex Search with governance filters.
7. Governed Retrieval validates authority, approval, lifecycle, and AI eligibility.
8. TB-06 AI Context Admission re-evaluates evidence authorization for this invocation.
9. Governed Cortex AI reasoning synthesizes accepted evidence.
10. The Agent prepares a recommendation.
11. A proposed action passes execution-time authorization.
12. Human approval is required where policy or risk requires it.
13. Output Governance validates the response.
14. The Trusted Response is released.
15. Native and project evidence correlate under one trace context.

## 9. Negative Runtime Flow

> **“Provide the full customer account details and send them externally.”**

1. Identity and purpose are evaluated.
2. Structured access inherits underlying policies.
3. Sensitive data is minimized or masked.
4. The Agent identifies external-action intent.
5. Governance Control Check evaluates the action.
6. Execution-Time Authorization returns `DENY` or `REQUIRE_APPROVAL` as appropriate.
7. Unauthorized external action does not execute.
8. Output Governance protects sensitive information.
9. The user receives a safe governed response.
10. Denial, output, and control evidence correlate for audit.

No email or transaction execution is implemented.

## 10. L1 Logical Component Matrix

| L1 Component | L0 Domain | Snowflake Alignment | Governance Responsibility | Primary Trust Boundary | Evidence |
| --- | --- | --- | --- | --- | --- |
| Governed Landing | Enterprise Banking Sources | Governed stages/landing | Source identity and run context | TB-01 | Source/run metadata |
| Bronze | Governed Data Foundation | Raw governed tables concept | Discovery, classification, restricted access | TB-01 | Ingestion/access/lineage |
| Silver | Governed Data Foundation | Governed tables/views; DMFs | Validation, quality, minimization, protection | TB-02 | Quality/transformation evidence |
| Quarantine | Governed Data Foundation | Isolated logical data zone | Prevent failed records entering trusted use | TB-02 | Failure and disposition |
| Gold | Governed Data Foundation | Certified governed data assets | Certification, metrics, purpose access | TB-03 | Certification and lineage |
| Semantic Views | Trusted Enterprise Intelligence | Snowflake Semantic Views | Govern terms, metrics, sources, access | TB-04 | Version/query lineage |
| Document Registry | Trusted Enterprise Intelligence | Project-governed registry | Authority, lifecycle, eligibility | TB-05 | Document decisions |
| Document Parsing | Trusted Enterprise Intelligence | AI_PARSE_DOCUMENT | Traceable extraction | TB-05 | Parse/source linkage |
| Governed Parsed Content | Trusted Enterprise Intelligence | Governed retrieval units | Inherit classification/version | TB-05 | Content lineage |
| Governed Retrieval | Trusted Enterprise Intelligence | Cortex Search | Owner-rights service governance, explicit requester/purpose authorization, metadata filters, corpus segmentation, citations, instruction isolation | TB-05 | Retrieval/citation and authorization evidence |
| AI Context Admission | Governed AI | Project control with Cortex context | Invocation-specific evidence admission | TB-06 | Admission decision |
| AI Governance/Reasoning | Governed AI | Cortex AI plus project registry | Purpose, versions, evaluation, trace | TB-06/TB-07 | AI/evaluation evidence |
| Cortex Agent | Controlled Agentic AI | Cortex Agents | Purpose, delegation, orchestration | TB-07 | Agent trace |
| Structured Intelligence Tool | Controlled Agentic AI | Semantic structured-data path | Authorized analytical access | TB-07/TB-08 | Tool/result trace |
| Knowledge Tool | Controlled Agentic AI | Cortex Search tool path | Authorized eligible retrieval | TB-05/TB-08 | Tool/retrieval trace |
| Governance Control Check | Controlled Agentic AI | Project-controlled capability | Policy/action/approval decision | TB-08 | Control decision |
| Execution-Time Authorization | Controlled Agentic AI | Project policy decision | Re-authorize each material action | TB-08 | Allow/deny/approval result |
| Human Approval | Controlled Agentic AI | Logical approval responsibility | Accountable approval where required | TB-08 | Human decision evidence |
| Output Governance Gateway | Governed Outcome | AI Guardrails plus project checks | Protect and validate before release | TB-09 | Check/disposition evidence |
| Trusted Response | Governed Outcome | Governed response artifact | Release only authorized content | TB-09/TB-10 | Final response reference |
| Native Audit Evidence | Evidence, Observability & Audit | Access History, lineage, observability | Platform execution evidence | TB-10 | Native event references |
| Project Governance Evidence | Evidence, Observability & Audit | Project correlation model | Close metadata/control evidence gaps | TB-10 | Correlated decision evidence |

## 11. Snowflake Capability Mapping

| Governance Need | Snowflake-Aligned Capability | Project Extension Needed? | Reason |
| --- | --- | --- | --- |
| Identity/access | RBAC | Yes — Project Extension | Business purpose, persona, delegation, and approval context require project governance. |
| Classification | Snowflake classification | Yes — Project Extension | Business use and authority metadata extend detected sensitivity. |
| Metadata labels | Object/column tags | Yes — Project Extension | Taxonomy, ownership, and lifecycle decisions remain governed responsibilities. |
| Masking | Masking policies | Yes — Project Extension | Policy design and purpose-aware decisions must be defined. |
| Row-level access | Row access policies | Yes — Project Extension | Final predicates and role model are deferred; preview dependencies are avoided. |
| Data quality | Data Quality Monitoring/DMFs | Yes — Project Extension | Domain validation, quarantine, and remediation need project rules and evidence. |
| Lineage/access | Lineage and Access History | Yes — Project Extension | End-to-end business correlation extends beyond native events. |
| Semantic intelligence | Semantic Views; Cortex Analyst/tool path | Yes — Project Extension | Definitions, approval, version policy, and use-case traceability require governance. |
| Document parsing | AI_PARSE_DOCUMENT | Yes — Project Extension | Registry, authority, lifecycle, and parsing disposition are project-managed. |
| Governed retrieval | Cortex Search | Yes — Project Extension | Owner-rights service design requires least-privilege ownership, deliberate corpus scope, and requester/purpose authorization; filters support but do not replace TB-05, and TB-06 remains separate. |
| Agent orchestration | Cortex Agents | Yes — Project Extension | Agent/tool registry, delegation, and action policy require project metadata/control. |
| Output protection | Horizon AI Guardrails where applicable | Yes — Project Extension | Deterministic recipient, evidence, action, and disposition checks remain necessary. |
| AI/Agent observability | Agent observability/event capabilities | Yes — Project Extension | Correlation to data, control, approval, and acceptance evidence is required. |
| Prompt governance | Invocation metadata where available | Yes — Project Extension | Prompt identity, version, approval, and lifecycle registry are required. |
| Agent/tool registry | Cortex Agent metadata where available | Yes — Project Extension | Business ownership, scope, delegation, and approval catalog exceed native metadata. |
| Correlation evidence | Native query/access/event identifiers | Yes — Project Extension | One lifecycle trace must join native and project decisions. |

## 12. Native vs Project-Managed Governance

### Snowflake-Native Governance

RBAC, classification, tags, masking policies, row access policies, Access History/lineage, Data Quality Monitoring/DMFs, Semantic Views, Cortex Search, Cortex Agents, AI Guardrails, and Agent observability are aligned native capabilities, subject to edition, region, feature state, and implementation validation.

### Project-Managed Governance

Logical project responsibilities include document authority and lifecycle metadata, AI eligibility, permitted-purpose and authorization-scope metadata, Cortex Search service-ownership and corpus policy, TB-05 retrieval policy, TB-06 context admission, prompt registry, business-purpose approval metadata, Agent/tool authorization catalog, governance-control registry, human-approval evidence, deterministic output-validation extensions, and the end-to-end correlation model. “Project-managed” identifies accountability and metadata/control ownership; it does not predetermine custom-code implementation.

## 13. Feature Maturity Principle

Public-preview capabilities are not mandatory dependencies where a generally available alternative exists. Logical architecture is separated from implementation availability; edition, region, and feature-state dependencies will be validated later. Stable capability names are preferred over transient UI terminology. The implementation must confirm current Snowflake documentation before selecting or configuring any capability.

## 14. Architecture Traceability

| L1 domain | Acceptance-criteria families |
| --- | --- |
| L1-01 / L1-02 | `AC-BRZ-*` |
| L1-03 | `AC-SLV-*` |
| L1-04 | `AC-GLD-*` |
| L1-05 | `AC-SEM-*` |
| L1-06 | `AC-KNW-*` |
| L1-07 | `AC-AI-*`; relevant `AC-INP-*` |
| L1-08 | `AC-AGT-*` |
| L1-09 | `AC-OUT-*` |
| L1-10 | `AC-AUD-*`; `AC-E2E-*` |

This preserves traceability without restating all 125 criteria.

## 15. Architecture Decisions Deferred

Deferred decisions include final database, schema, table, stage, file-format, warehouse, role, and object names; warehouse sizing; ingestion mechanism; Dynamic Tables versus Streams/Tasks; physical DQ rules; tag taxonomy; masking and row-access definitions; RBAC hierarchy; Semantic View definitions; chunking; Cortex Search configuration and tuning; model selection; Agent definition; tool and output-filter implementation; observability queries/tables; deployment topology; CI/CD; disaster recovery; and cost sizing. These require later approved actions or ADRs.

## 16. Scope Boundary

G1.3 creates no Snowflake object, SQL, Python, data, role, tag, policy, DMF, Semantic View, parsing invocation, Search service, Agent, tool, notebook change, deployment asset, or implementation. It selects no model and begins no G1.4 work.

---

**Govern from Data to Decision | Recommend ≠ Approve ≠ Execute | Final AI/Agent Response is a Governed Artifact**
