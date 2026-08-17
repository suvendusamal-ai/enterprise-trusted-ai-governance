# Governance Capability Model

## 1. Purpose

This model organizes governance responsibilities across the complete lifecycle:

**Source → Bronze → Silver → Gold → Semantic/Knowledge → AI → Agent → Output → Audit**

It translates approved requirements into capabilities that architecture, control design, implementation, testing, observability, and audit can later use. The model is technology-neutral. Later work will map it to Snowflake capabilities and compare it conceptually with Databricks Unity Catalog and Microsoft Purview; G0.4 performs no platform mapping.

## 2. Governance Capability Hierarchy

**Governance Domain → Governance Capability → Control Family → Control → Evidence**

- **Governance Domain:** A major area of accountability aligned to a lifecycle concern and approved requirement prefix.
- **Governance Capability:** A stable statement of what governance must be able to achieve.
- **Control Family:** A reusable grouping of safeguards that realizes one or more capabilities.
- **Control:** A future policy, process, or mechanism that produces a defined governance outcome.
- **Evidence:** A verifiable record that a governance event, decision, or control execution occurred.

Capability and control-family identifiers are architecture and control-model identifiers, not implementation objects or new governance requirements.

## 3. Governance Domains

Exactly ten domains organize the approved requirements:

| # | Governance Domain | Approved Requirement Prefix |
| ---: | --- | --- |
| 1 | Data Ingestion Governance | `GOV-BRZ` |
| 2 | Data Quality & Transformation Governance | `GOV-SLV` |
| 3 | Curated Data Product Governance | `GOV-GLD` |
| 4 | Semantic Governance | `GOV-SEM` |
| 5 | Knowledge Governance | `GOV-KNW` |
| 6 | AI Governance | `GOV-AI` |
| 7 | Agentic AI Governance | `GOV-AGT` |
| 8 | Input & Prompt Governance | `GOV-INP` |
| 9 | Output Governance | `GOV-OUT` |
| 10 | Observability, Evidence & Audit Governance | `GOV-AUD` |

## 4. Capability Definitions

### Data Ingestion Governance

- `CAP-BRZ-01` — Source Provenance
- `CAP-BRZ-02` — Ingestion Traceability
- `CAP-BRZ-03` — Raw-Data Protection
- `CAP-BRZ-04` — Sensitive-Data Discovery
- `CAP-BRZ-05` — Data Classification
- `CAP-BRZ-06` — Retention Context
- `CAP-BRZ-07` — Restricted Bronze Access

### Data Quality & Transformation Governance

- `CAP-SLV-01` — Schema Validation
- `CAP-SLV-02` — Quality Validation
- `CAP-SLV-03` — Standardization
- `CAP-SLV-04` — Duplicate Management
- `CAP-SLV-05` — Quarantine
- `CAP-SLV-06` — Transformation Lineage
- `CAP-SLV-07` — Data Minimization
- `CAP-SLV-08` — Sensitive-Data Protection

### Curated Data Product Governance

- `CAP-GLD-01` — Data Product Certification
- `CAP-GLD-02` — Ownership & Stewardship
- `CAP-GLD-03` — Business Definitions
- `CAP-GLD-04` — Governed Metrics
- `CAP-GLD-05` — Fitness for Use
- `CAP-GLD-06` — Quality Thresholds
- `CAP-GLD-07` — Consumption Authorization

### Semantic Governance

- `CAP-SEM-01` — Semantic Asset Registration
- `CAP-SEM-02` — Governed Terms
- `CAP-SEM-03` — Metric Governance
- `CAP-SEM-04` — Semantic Versioning
- `CAP-SEM-05` — Governed Source Use
- `CAP-SEM-06` — Authorization Inheritance
- `CAP-SEM-07` — Semantic-Result Traceability

### Knowledge Governance

- `CAP-KNW-01` — Knowledge Inventory
- `CAP-KNW-02` — Document Ownership
- `CAP-KNW-03` — Knowledge Classification
- `CAP-KNW-04` — Authority Governance
- `CAP-KNW-05` — Knowledge Versioning
- `CAP-KNW-06` — Approval Lifecycle
- `CAP-KNW-07` — Effective & Expiry Governance
- `CAP-KNW-08` — AI Eligibility
- `CAP-KNW-09` — Retrieval Authorization
- `CAP-KNW-10` — Citation & Source Traceability
- `CAP-KNW-11` — Instruction Isolation

### AI Governance

- `CAP-AI-01` — AI Asset Inventory
- `CAP-AI-02` — Model & Version Governance
- `CAP-AI-03` — Prompt & Version Governance
- `CAP-AI-04` — Business-Purpose Governance
- `CAP-AI-05` — AI Ownership
- `CAP-AI-06` — AI Risk Classification
- `CAP-AI-07` — AI Approval Lifecycle
- `CAP-AI-08` — AI Evaluation
- `CAP-AI-09` — Groundedness Governance
- `CAP-AI-10` — Quality Monitoring
- `CAP-AI-11` — Responsible AI Controls

### Agentic AI Governance

- `CAP-AGT-01` — Agent Inventory
- `CAP-AGT-02` — Agent Purpose
- `CAP-AGT-03` — Agent Ownership
- `CAP-AGT-04` — Tool Authorization
- `CAP-AGT-05` — Data-Domain Authorization
- `CAP-AGT-06` — Knowledge-Domain Authorization
- `CAP-AGT-07` — Delegated Authority
- `CAP-AGT-08` — Execution-Time Authorization
- `CAP-AGT-09` — Human Approval
- `CAP-AGT-10` — Denied-Action Governance
- `CAP-AGT-11` — Agent Decision Traceability

### Input & Prompt Governance

- `CAP-INP-01` — Input Validation
- `CAP-INP-02` — Identity & Context Propagation
- `CAP-INP-03` — Prompt-Injection Protection
- `CAP-INP-04` — Malicious Instruction Handling
- `CAP-INP-05` — Untrusted-Content Handling
- `CAP-INP-06` — Safe Input Logging

### Output Governance

- `CAP-OUT-01` — Sensitive-Output Detection
- `CAP-OUT-02` — Recipient Authorization
- `CAP-OUT-03` — Masking, Redaction & Blocking
- `CAP-OUT-04` — Output Groundedness
- `CAP-OUT-05` — Evidence & Citation Validation
- `CAP-OUT-06` — Unsupported-Claim Handling
- `CAP-OUT-07` — Controlled Abstention
- `CAP-OUT-08` — Restricted-Action Handling
- `CAP-OUT-09` — Output Traceability

### Observability, Evidence & Audit Governance

- `CAP-AUD-01` — Trace & Correlation
- `CAP-AUD-02` — Control Execution Evidence
- `CAP-AUD-03` — Data Lineage Evidence
- `CAP-AUD-04` — AI Invocation Evidence
- `CAP-AUD-05` — Agent & Tool Evidence
- `CAP-AUD-06` — Human Approval Evidence
- `CAP-AUD-07` — Denied-Action Evidence
- `CAP-AUD-08` — Output Disposition Evidence
- `CAP-AUD-09` — Evaluation Evidence
- `CAP-AUD-10` — Audit Reconstruction
- `CAP-AUD-11` — Evidence Protection & Retention

## 5. Capability Model Matrix

| Capability ID | Governance Domain | Capability | Primary Requirement Prefix | Relevant Trust Boundaries | Primary Personas | Expected Governance Outcome |
| ------------- | ----------------- | ---------- | -------------------------- | ------------------------- | ---------------- | --------------------------- |
| CAP-BRZ-01 | Data Ingestion Governance | Source Provenance | `GOV-BRZ` | TB-01 | Data Steward | Origin and source context are identifiable. |
| CAP-BRZ-02 | Data Ingestion Governance | Ingestion Traceability | `GOV-BRZ` | TB-01 | Data Steward; Internal Auditor | Ingestion events correlate to source, time, and run. |
| CAP-BRZ-03 | Data Ingestion Governance | Raw-Data Protection | `GOV-BRZ` | TB-01 | Data Steward; Compliance / Risk Officer | Raw representations remain protected and controlled. |
| CAP-BRZ-04 | Data Ingestion Governance | Sensitive-Data Discovery | `GOV-BRZ` | TB-01 | Data Steward; Compliance / Risk Officer | Potentially sensitive data is identified at entry. |
| CAP-BRZ-05 | Data Ingestion Governance | Data Classification | `GOV-BRZ` | TB-01 | Data Steward; Compliance / Risk Officer | Assets carry approved sensitivity and use context. |
| CAP-BRZ-06 | Data Ingestion Governance | Retention Context | `GOV-BRZ` | TB-01, TB-10 | Data Steward; Compliance / Risk Officer | Retention and disposition expectations are explicit. |
| CAP-BRZ-07 | Data Ingestion Governance | Restricted Bronze Access | `GOV-BRZ` | TB-01, TB-02 | Data Steward; Compliance / Risk Officer | Raw access is purpose-bound and least-privilege. |
| CAP-SLV-01 | Data Quality & Transformation Governance | Schema Validation | `GOV-SLV` | TB-02 | Data Steward | Nonconforming data is detected before trusted use. |
| CAP-SLV-02 | Data Quality & Transformation Governance | Quality Validation | `GOV-SLV` | TB-02, TB-03 | Data Steward; Banking Operations Manager | Quality status is measured and usable. |
| CAP-SLV-03 | Data Quality & Transformation Governance | Standardization | `GOV-SLV` | TB-02 | Data Steward | Data follows approved formats and conventions. |
| CAP-SLV-04 | Data Quality & Transformation Governance | Duplicate Management | `GOV-SLV` | TB-02 | Data Steward | Duplicates receive consistent evidenced treatment. |
| CAP-SLV-05 | Data Quality & Transformation Governance | Quarantine | `GOV-SLV` | TB-02 | Data Steward | Unfit records are isolated from trusted use. |
| CAP-SLV-06 | Data Quality & Transformation Governance | Transformation Lineage | `GOV-SLV` | TB-02, TB-03 | Data Steward; Internal Auditor | Silver results trace to inputs and transformations. |
| CAP-SLV-07 | Data Quality & Transformation Governance | Data Minimization | `GOV-SLV` | TB-02, TB-03 | Data Steward; Compliance / Risk Officer | Unnecessary attributes do not propagate. |
| CAP-SLV-08 | Data Quality & Transformation Governance | Sensitive-Data Protection | `GOV-SLV` | TB-02, TB-03 | Data Steward; Compliance / Risk Officer | Sensitive data remains classified and protected. |
| CAP-GLD-01 | Curated Data Product Governance | Data Product Certification | `GOV-GLD` | TB-03 | Data Steward; Banking Operations Manager | Trusted-use status is formally established. |
| CAP-GLD-02 | Curated Data Product Governance | Ownership & Stewardship | `GOV-GLD` | TB-03 | Data Steward; Banking Operations Manager | Accountable ownership is explicit. |
| CAP-GLD-03 | Curated Data Product Governance | Business Definitions | `GOV-GLD` | TB-03, TB-04 | Data Steward; Banking Operations Manager | Business meaning is approved and consistent. |
| CAP-GLD-04 | Curated Data Product Governance | Governed Metrics | `GOV-GLD` | TB-03, TB-04 | Data Steward; Banking Operations Manager | Metrics have governed meaning and calculation context. |
| CAP-GLD-05 | Curated Data Product Governance | Fitness for Use | `GOV-GLD` | TB-03, TB-04 | Data Steward; Banking Operations Analyst | Intended use, limitations, and freshness are clear. |
| CAP-GLD-06 | Curated Data Product Governance | Quality Thresholds | `GOV-GLD` | TB-03 | Data Steward; Banking Operations Manager | Certification depends on approved quality thresholds. |
| CAP-GLD-07 | Curated Data Product Governance | Consumption Authorization | `GOV-GLD` | TB-03, TB-04, TB-06 | Compliance / Risk Officer; Banking Operations Manager | Consumption is authorized by identity and purpose. |
| CAP-SEM-01 | Semantic Governance | Semantic Asset Registration | `GOV-SEM` | TB-04 | Data Steward | Semantic assets are identifiable and owned. |
| CAP-SEM-02 | Semantic Governance | Governed Terms | `GOV-SEM` | TB-04 | Data Steward; Banking Operations Analyst | Semantic terms use approved business meaning. |
| CAP-SEM-03 | Semantic Governance | Metric Governance | `GOV-SEM` | TB-04 | Data Steward; Banking Operations Manager | Measures and calculations are approved and owned. |
| CAP-SEM-04 | Semantic Governance | Semantic Versioning | `GOV-SEM` | TB-04, TB-10 | Data Steward; Internal Auditor | Results identify the semantic version used. |
| CAP-SEM-05 | Semantic Governance | Governed Source Use | `GOV-SEM` | TB-04 | Data Steward | Semantic assets use certified sources. |
| CAP-SEM-06 | Semantic Governance | Authorization Inheritance | `GOV-SEM` | TB-04, TB-06 | Compliance / Risk Officer; Data Steward | Semantic access cannot weaken source controls. |
| CAP-SEM-07 | Semantic Governance | Semantic-Result Traceability | `GOV-SEM` | TB-04, TB-10 | Data Steward; Internal Auditor | Results trace to assets, definitions, and data. |
| CAP-KNW-01 | Knowledge Governance | Knowledge Inventory | `GOV-KNW` | TB-05 | Compliance / Risk Officer | Knowledge assets have persistent identities. |
| CAP-KNW-02 | Knowledge Governance | Document Ownership | `GOV-KNW` | TB-05 | Compliance / Risk Officer | Accountable knowledge ownership is recorded. |
| CAP-KNW-03 | Knowledge Governance | Knowledge Classification | `GOV-KNW` | TB-05 | Compliance / Risk Officer; Data Steward | Sensitivity and permitted use are explicit. |
| CAP-KNW-04 | Knowledge Governance | Authority Governance | `GOV-KNW` | TB-05 | Compliance / Risk Officer | Authority level is known before interpretation. |
| CAP-KNW-05 | Knowledge Governance | Knowledge Versioning | `GOV-KNW` | TB-05, TB-10 | Compliance / Risk Officer; Internal Auditor | Retrieved content is tied to a version. |
| CAP-KNW-06 | Knowledge Governance | Approval Lifecycle | `GOV-KNW` | TB-05 | Compliance / Risk Officer | Only appropriately approved knowledge is authoritative. |
| CAP-KNW-07 | Knowledge Governance | Effective & Expiry Governance | `GOV-KNW` | TB-05 | Compliance / Risk Officer | Obsolete knowledge is excluded from authority. |
| CAP-KNW-08 | Knowledge Governance | AI Eligibility | `GOV-KNW` | TB-05, TB-06 | AI Governance / Model Risk Officer; Compliance / Risk Officer | AI uses only eligible knowledge. |
| CAP-KNW-09 | Knowledge Governance | Retrieval Authorization | `GOV-KNW` | TB-05, TB-06 | Compliance / Risk Officer; Banking Operations Analyst | Retrieval respects user purpose and authorization. |
| CAP-KNW-10 | Knowledge Governance | Citation & Source Traceability | `GOV-KNW` | TB-05, TB-09, TB-10 | Banking Operations Analyst; Internal Auditor | Retrieved evidence traces to source and passage. |
| CAP-KNW-11 | Knowledge Governance | Instruction Isolation | `GOV-KNW` | TB-05, TB-06 | AI Governance / Model Risk Officer; Compliance / Risk Officer | Retrieved content cannot silently become instruction. |
| CAP-AI-01 | AI Governance | AI Asset Inventory | `GOV-AI` | TB-06 | AI Governance / Model Risk Officer | AI assets are identifiable and governed. |
| CAP-AI-02 | AI Governance | Model & Version Governance | `GOV-AI` | TB-06, TB-10 | AI Governance / Model Risk Officer; Internal Auditor | Approved model use and version are traceable. |
| CAP-AI-03 | AI Governance | Prompt & Version Governance | `GOV-AI` | TB-06, TB-10 | AI Governance / Model Risk Officer | Material prompts are identified and versioned. |
| CAP-AI-04 | AI Governance | Business-Purpose Governance | `GOV-AI` | TB-06, TB-07 | AI Governance / Model Risk Officer; Compliance / Risk Officer | AI use remains within approved purpose. |
| CAP-AI-05 | AI Governance | AI Ownership | `GOV-AI` | TB-06 | AI Governance / Model Risk Officer | Business and technical accountability is assigned. |
| CAP-AI-06 | AI Governance | AI Risk Classification | `GOV-AI` | TB-06, TB-07 | AI Governance / Model Risk Officer; Compliance / Risk Officer | Controls and oversight reflect assessed risk. |
| CAP-AI-07 | AI Governance | AI Approval Lifecycle | `GOV-AI` | TB-06, TB-07 | AI Governance / Model Risk Officer | Introduction, change, use, and retirement are approved. |
| CAP-AI-08 | AI Governance | AI Evaluation | `GOV-AI` | TB-06, TB-09, TB-10 | AI Governance / Model Risk Officer | Quality, safety, and governance performance is evaluated. |
| CAP-AI-09 | AI Governance | Groundedness Governance | `GOV-AI` | TB-06, TB-09 | AI Governance / Model Risk Officer; Banking Operations Analyst | Evidence-dependent responses are grounded. |
| CAP-AI-10 | AI Governance | Quality Monitoring | `GOV-AI` | TB-06, TB-10 | AI Governance / Model Risk Officer | Performance and controls are monitored over time. |
| CAP-AI-11 | AI Governance | Responsible AI Controls | `GOV-AI` | TB-06, TB-09 | AI Governance / Model Risk Officer; Compliance / Risk Officer | Relevant responsible AI risks are controlled. |
| CAP-AGT-01 | Agentic AI Governance | Agent Inventory | `GOV-AGT` | TB-07 | AI Governance / Model Risk Officer | Agents are identifiable and versioned. |
| CAP-AGT-02 | Agentic AI Governance | Agent Purpose | `GOV-AGT` | TB-07 | AI Governance / Model Risk Officer; Banking Operations Manager | Agent operation remains purpose-bound. |
| CAP-AGT-03 | Agentic AI Governance | Agent Ownership | `GOV-AGT` | TB-07 | AI Governance / Model Risk Officer | Business and technical owners are accountable. |
| CAP-AGT-04 | Agentic AI Governance | Tool Authorization | `GOV-AGT` | TB-07, TB-08 | AI Governance / Model Risk Officer; Compliance / Risk Officer | Only approved tools are available. |
| CAP-AGT-05 | Agentic AI Governance | Data-Domain Authorization | `GOV-AGT` | TB-06, TB-07 | Compliance / Risk Officer; Data Steward | Agent data access inherits domain controls. |
| CAP-AGT-06 | Agentic AI Governance | Knowledge-Domain Authorization | `GOV-AGT` | TB-05, TB-07 | Compliance / Risk Officer | Agent retrieval remains within eligible domains. |
| CAP-AGT-07 | Agentic AI Governance | Delegated Authority | `GOV-AGT` | TB-07, TB-08 | Banking Operations Manager; Compliance / Risk Officer | Agent authority cannot exceed delegated authority. |
| CAP-AGT-08 | Agentic AI Governance | Execution-Time Authorization | `GOV-AGT` | TB-08 | Banking Operations Manager; Compliance / Risk Officer | Each proposed action is re-authorized. |
| CAP-AGT-09 | Agentic AI Governance | Human Approval | `GOV-AGT` | TB-08 | Banking Operations Manager; Compliance / Risk Officer | Material actions require accountable approval. |
| CAP-AGT-10 | Agentic AI Governance | Denied-Action Governance | `GOV-AGT` | TB-08, TB-10 | AI Governance / Model Risk Officer; Internal Auditor | Denials prevent effects and produce evidence. |
| CAP-AGT-11 | Agentic AI Governance | Agent Decision Traceability | `GOV-AGT` | TB-07, TB-08, TB-09, TB-10 | AI Governance / Model Risk Officer; Internal Auditor | Agent decision paths are reconstructable. |
| CAP-INP-01 | Input & Prompt Governance | Input Validation | `GOV-INP` | TB-06 | AI Governance / Model Risk Officer | Invalid or prohibited input is controlled. |
| CAP-INP-02 | Input & Prompt Governance | Identity & Context Propagation | `GOV-INP` | TB-06, TB-07, TB-08 | Compliance / Risk Officer; Banking Operations Analyst | Authorization decisions retain verified context. |
| CAP-INP-03 | Input & Prompt Governance | Prompt-Injection Protection | `GOV-INP` | TB-05, TB-06 | AI Governance / Model Risk Officer | Injection attempts cannot override governance. |
| CAP-INP-04 | Input & Prompt Governance | Malicious Instruction Handling | `GOV-INP` | TB-05, TB-06 | AI Governance / Model Risk Officer; Compliance / Risk Officer | Malicious instructions are denied and evidenced. |
| CAP-INP-05 | Input & Prompt Governance | Untrusted-Content Handling | `GOV-INP` | TB-05, TB-06 | AI Governance / Model Risk Officer | Untrusted evidence remains isolated from instruction. |
| CAP-INP-06 | Input & Prompt Governance | Safe Input Logging | `GOV-INP` | TB-06, TB-10 | Compliance / Risk Officer; Internal Auditor | Logs support traceability without excess exposure. |
| CAP-OUT-01 | Output Governance | Sensitive-Output Detection | `GOV-OUT` | TB-09 | Compliance / Risk Officer | Sensitive content is detected before release. |
| CAP-OUT-02 | Output Governance | Recipient Authorization | `GOV-OUT` | TB-09 | Compliance / Risk Officer; Banking Operations Analyst | Output detail matches recipient authorization. |
| CAP-OUT-03 | Output Governance | Masking, Redaction & Blocking | `GOV-OUT` | TB-09 | Compliance / Risk Officer | Unauthorized sensitive output is protected. |
| CAP-OUT-04 | Output Governance | Output Groundedness | `GOV-OUT` | TB-09 | AI Governance / Model Risk Officer; Banking Operations Analyst | Claims remain supported by available evidence. |
| CAP-OUT-05 | Output Governance | Evidence & Citation Validation | `GOV-OUT` | TB-09, TB-10 | Banking Operations Analyst; Internal Auditor | Material claims connect to valid evidence. |
| CAP-OUT-06 | Output Governance | Unsupported-Claim Handling | `GOV-OUT` | TB-09 | AI Governance / Model Risk Officer | Unsupported claims are qualified or withheld. |
| CAP-OUT-07 | Output Governance | Controlled Abstention | `GOV-OUT` | TB-09 | Banking Operations Analyst; AI Governance / Model Risk Officer | Insufficient evidence produces safe abstention. |
| CAP-OUT-08 | Output Governance | Restricted-Action Handling | `GOV-OUT` | TB-08, TB-09 | Banking Operations Manager; Compliance / Risk Officer | Restricted requests are denied or escalated. |
| CAP-OUT-09 | Output Governance | Output Traceability | `GOV-OUT` | TB-09, TB-10 | Internal Auditor; AI Governance / Model Risk Officer | Final output and disposition are reconstructable. |
| CAP-AUD-01 | Observability, Evidence & Audit Governance | Trace & Correlation | `GOV-AUD` | TB-01, TB-02, TB-03, TB-04, TB-05, TB-06, TB-07, TB-08, TB-09, TB-10 | Internal Auditor | Events correlate across the lifecycle. |
| CAP-AUD-02 | Observability, Evidence & Audit Governance | Control Execution Evidence | `GOV-AUD` | TB-01, TB-02, TB-03, TB-04, TB-05, TB-06, TB-07, TB-08, TB-09, TB-10 | Internal Auditor; Compliance / Risk Officer | Material control decisions are verifiable. |
| CAP-AUD-03 | Observability, Evidence & Audit Governance | Data Lineage Evidence | `GOV-AUD` | TB-01, TB-02, TB-03, TB-04 | Data Steward; Internal Auditor | Data and semantic results trace to source. |
| CAP-AUD-04 | Observability, Evidence & Audit Governance | AI Invocation Evidence | `GOV-AUD` | TB-06, TB-10 | AI Governance / Model Risk Officer; Internal Auditor | AI requests, context, versions, and outputs are evidenced. |
| CAP-AUD-05 | Observability, Evidence & Audit Governance | Agent & Tool Evidence | `GOV-AUD` | TB-07, TB-08, TB-10 | AI Governance / Model Risk Officer; Internal Auditor | Agent and tool activity is reconstructable. |
| CAP-AUD-06 | Observability, Evidence & Audit Governance | Human Approval Evidence | `GOV-AUD` | TB-08, TB-10 | Banking Operations Manager; Internal Auditor | Human decisions and rationale are attributable. |
| CAP-AUD-07 | Observability, Evidence & Audit Governance | Denied-Action Evidence | `GOV-AUD` | TB-08, TB-10 | Compliance / Risk Officer; Internal Auditor | Denials and governing reasons are recorded. |
| CAP-AUD-08 | Observability, Evidence & Audit Governance | Output Disposition Evidence | `GOV-AUD` | TB-09, TB-10 | Compliance / Risk Officer; Internal Auditor | Release, masking, blocking, or abstention is evidenced. |
| CAP-AUD-09 | Observability, Evidence & Audit Governance | Evaluation Evidence | `GOV-AUD` | TB-06, TB-09, TB-10 | AI Governance / Model Risk Officer; Internal Auditor | Evaluation results connect to assets and executions. |
| CAP-AUD-10 | Observability, Evidence & Audit Governance | Audit Reconstruction | `GOV-AUD` | TB-10 | Internal Auditor | Material decision paths can be reconstructed. |
| CAP-AUD-11 | Observability, Evidence & Audit Governance | Evidence Protection & Retention | `GOV-AUD` | TB-10 | Compliance / Risk Officer; Internal Auditor | Evidence remains protected, available, and retained appropriately. |

## 6. Capability Coverage Principles

- Every approved governance requirement must later map to at least one capability.
- A capability may satisfy multiple governance requirements.
- A capability may span more than one trust boundary.
- Governance capabilities may be preventive, detective, corrective, or evidentiary.
- Higher lifecycle layers cannot weaken controls inherited from lower layers.
- AI and Agent capabilities must not bypass underlying data or knowledge governance.
- The final AI/Agent output remains a governed artifact.

## 7. Capability-to-Evidence Principle

**Capability → Control → Execution → Evidence**

Later actions will extend this into:

**Requirement → Capability → Control → Execution → Evidence → Test → Audit**

G0.4 establishes the capability structure only. Detailed requirement mappings, controls, executions, evidence records, tests, and audit implementation are deferred.
