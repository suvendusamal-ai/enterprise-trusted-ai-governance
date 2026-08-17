# Governance Control Catalog

## 1. Purpose

This catalog translates approved governance capabilities into reusable control families that later architecture, implementation, testing, observability, and audit actions can realize. It is technology-neutral and defines no implementation objects or vendor mechanisms.

## 2. Control Types

### Preventive

Stops or restricts an undesired condition before it occurs.

### Detective

Identifies a governance or control issue after or during execution.

### Corrective

Remediates or routes a detected issue.

### Evidentiary

Creates verifiable evidence that a governance event, decision, or control execution occurred.

One business safeguard may combine more than one control type—for example, detecting invalid data, quarantining it, and recording the disposition.

## 3. Control Families

Control families use `CF-<DOMAIN>-NN`. Their IDs group future controls; they are not governance requirement IDs or implementations.

### Bronze / Data Ingestion

`CF-BRZ-01` Source Provenance Controls; `CF-BRZ-02` Ingestion Metadata Controls; `CF-BRZ-03` Sensitive Data Discovery Controls; `CF-BRZ-04` Classification Controls; `CF-BRZ-05` Raw Data Access Controls; `CF-BRZ-06` Retention Controls; `CF-BRZ-07` Bronze Audit Controls.

### Silver / Transformation

`CF-SLV-01` Schema Validation Controls; `CF-SLV-02` Data Quality Controls; `CF-SLV-03` Standardization Controls; `CF-SLV-04` Duplicate Management Controls; `CF-SLV-05` Quarantine Controls; `CF-SLV-06` Data Minimization Controls; `CF-SLV-07` Sensitive Data Protection Controls; `CF-SLV-08` Transformation Lineage Controls.

### Gold / Curated Data

`CF-GLD-01` Certification Controls; `CF-GLD-02` Business Definition Controls; `CF-GLD-03` Ownership & Stewardship Controls; `CF-GLD-04` Metric Governance Controls; `CF-GLD-05` Quality Threshold Controls; `CF-GLD-06` Consumption Authorization Controls; `CF-GLD-07` Sensitive Data Minimization Controls.

### Semantic

`CF-SEM-01` Semantic Asset Registration Controls; `CF-SEM-02` Metric/Definition Approval Controls; `CF-SEM-03` Semantic Version Controls; `CF-SEM-04` Governed Source Controls; `CF-SEM-05` Authorization Inheritance Controls; `CF-SEM-06` Semantic Traceability Controls.

### Knowledge

`CF-KNW-01` Document Registration Controls; `CF-KNW-02` Classification Controls; `CF-KNW-03` Authority Controls; `CF-KNW-04` Approval Controls; `CF-KNW-05` Version/Lifecycle Controls; `CF-KNW-06` AI Eligibility Controls; `CF-KNW-07` Retrieval Authorization Controls; `CF-KNW-08` Citation/Source Trace Controls; `CF-KNW-09` Instruction Isolation Controls.

### AI

`CF-AI-01` AI Asset Registration Controls; `CF-AI-02` Model Approval Controls; `CF-AI-03` Model Version Controls; `CF-AI-04` Prompt Version Controls; `CF-AI-05` AI Purpose Controls; `CF-AI-06` AI Risk Classification Controls; `CF-AI-07` Evaluation Controls; `CF-AI-08` Groundedness Controls; `CF-AI-09` Responsible AI Controls; `CF-AI-10` Monitoring Controls.

### Agent

`CF-AGT-01` Agent Registration Controls; `CF-AGT-02` Agent Purpose Controls; `CF-AGT-03` Tool Authorization Controls; `CF-AGT-04` Data/Knowledge Scope Controls; `CF-AGT-05` Delegated Authority Controls; `CF-AGT-06` Execution Authorization Controls; `CF-AGT-07` Human Approval Controls; `CF-AGT-08` Denied Action Controls; `CF-AGT-09` Agent Trace Controls.

### Input

`CF-INP-01` Input Validation Controls; `CF-INP-02` Identity Context Controls; `CF-INP-03` Prompt Injection Controls; `CF-INP-04` Malicious Instruction Controls; `CF-INP-05` Untrusted Content Controls; `CF-INP-06` Safe Logging Controls.

### Output

`CF-OUT-01` Sensitive Output Controls; `CF-OUT-02` Recipient Authorization Controls; `CF-OUT-03` Masking/Redaction Controls; `CF-OUT-04` Groundedness Controls; `CF-OUT-05` Citation/Evidence Controls; `CF-OUT-06` Unsupported Claim Controls; `CF-OUT-07` Abstention Controls; `CF-OUT-08` Restricted Action Controls; `CF-OUT-09` Output Audit Controls.

### Audit

`CF-AUD-01` Correlation Controls; `CF-AUD-02` Evidence Capture Controls; `CF-AUD-03` Lineage Evidence Controls; `CF-AUD-04` AI Invocation Evidence Controls; `CF-AUD-05` Agent/Tool Evidence Controls; `CF-AUD-06` Human Decision Evidence Controls; `CF-AUD-07` Evaluation Evidence Controls; `CF-AUD-08` Output Disposition Evidence Controls; `CF-AUD-09` Audit Reconstruction Controls; `CF-AUD-10` Evidence Protection Controls.

## 4. Control Catalog Table

| Control Family ID | Domain | Control Family | Control Type(s) | Primary Capability IDs | Related Requirement Prefix | Relevant Trust Boundaries | Expected Control Outcome | Expected Evidence |
| ----------------- | ------ | -------------- | --------------- | ---------------------- | -------------------------- | ------------------------- | ------------------------ | ----------------- |
| CF-BRZ-01 | Data Ingestion Governance | Source Provenance Controls | Preventive; Evidentiary | CAP-BRZ-01 | `GOV-BRZ` | TB-01 | Accept only identified sources with provenance. | Source identity, extraction context, lineage reference |
| CF-BRZ-02 | Data Ingestion Governance | Ingestion Metadata Controls | Preventive; Evidentiary | CAP-BRZ-02 | `GOV-BRZ` | TB-01 | Capture time, batch, run, and source context. | Ingestion timestamp, run ID, source, outcome |
| CF-BRZ-03 | Data Ingestion Governance | Sensitive Data Discovery Controls | Detective; Evidentiary | CAP-BRZ-04 | `GOV-BRZ` | TB-01 | Detect potentially sensitive content at entry. | Scan context, findings, asset and attribute references |
| CF-BRZ-04 | Data Ingestion Governance | Classification Controls | Preventive; Detective; Evidentiary | CAP-BRZ-05 | `GOV-BRZ` | TB-01 | Assign and validate approved classifications. | Classification, basis, owner, timestamp |
| CF-BRZ-05 | Data Ingestion Governance | Raw Data Access Controls | Preventive; Evidentiary | CAP-BRZ-03, CAP-BRZ-07 | `GOV-BRZ` | TB-01, TB-02 | Restrict raw access by identity and purpose. | Access request, authorization decision, policy reference |
| CF-BRZ-06 | Data Ingestion Governance | Retention Controls | Preventive; Corrective; Evidentiary | CAP-BRZ-06 | `GOV-BRZ` | TB-01, TB-10 | Apply approved retention and disposition context. | Retention class, schedule, disposition decision |
| CF-BRZ-07 | Data Ingestion Governance | Bronze Audit Controls | Evidentiary | CAP-BRZ-02, CAP-AUD-02 | `GOV-BRZ` | TB-01, TB-10 | Make ingestion, access, and exceptions auditable. | Correlated ingestion and access events |
| CF-SLV-01 | Data Quality & Transformation Governance | Schema Validation Controls | Preventive; Detective; Evidentiary | CAP-SLV-01 | `GOV-SLV` | TB-02 | Prevent nonconforming data from trusted flow. | Schema version, validation result, failed fields |
| CF-SLV-02 | Data Quality & Transformation Governance | Data Quality Controls | Detective; Corrective; Evidentiary | CAP-SLV-02 | `GOV-SLV` | TB-02, TB-03 | Detect, route, and evidence quality failures. | Rule results, quality status, remediation disposition |
| CF-SLV-03 | Data Quality & Transformation Governance | Standardization Controls | Preventive; Evidentiary | CAP-SLV-03 | `GOV-SLV` | TB-02 | Apply approved formats and reference conventions. | Rule version, input/output references, result |
| CF-SLV-04 | Data Quality & Transformation Governance | Duplicate Management Controls | Detective; Corrective; Evidentiary | CAP-SLV-04 | `GOV-SLV` | TB-02 | Detect and resolve duplicates consistently. | Match evidence, resolution rule, disposition |
| CF-SLV-05 | Data Quality & Transformation Governance | Quarantine Controls | Preventive; Corrective; Evidentiary | CAP-SLV-05 | `GOV-SLV` | TB-02 | Isolate unfit data from trusted consumption. | Quarantine reason, record reference, status, release decision |
| CF-SLV-06 | Data Quality & Transformation Governance | Data Minimization Controls | Preventive; Detective; Evidentiary | CAP-SLV-07 | `GOV-SLV` | TB-02, TB-03 | Exclude unnecessary attributes from downstream use. | Purpose, allowed fields, excluded fields, decision |
| CF-SLV-07 | Data Quality & Transformation Governance | Sensitive Data Protection Controls | Preventive; Detective; Evidentiary | CAP-SLV-08 | `GOV-SLV` | TB-02, TB-03 | Preserve classification and protection. | Classification, protection decision, access outcome |
| CF-SLV-08 | Data Quality & Transformation Governance | Transformation Lineage Controls | Evidentiary | CAP-SLV-06 | `GOV-SLV` | TB-02, TB-03 | Trace Silver records and attributes to transformations. | Input/output assets, transformation version, run ID |
| CF-GLD-01 | Curated Data Product Governance | Certification Controls | Preventive; Evidentiary | CAP-GLD-01, CAP-GLD-05 | `GOV-GLD` | TB-03 | Expose trusted status only after approval. | Certification status, approver, scope, limitations |
| CF-GLD-02 | Curated Data Product Governance | Business Definition Controls | Preventive; Evidentiary | CAP-GLD-03 | `GOV-GLD` | TB-03, TB-04 | Use approved business definitions. | Definition identity, version, owner, approval |
| CF-GLD-03 | Curated Data Product Governance | Ownership & Stewardship Controls | Preventive; Evidentiary | CAP-GLD-02 | `GOV-GLD` | TB-03 | Assign accountable ownership and stewardship. | Owner, steward, responsibility scope |
| CF-GLD-04 | Curated Data Product Governance | Metric Governance Controls | Preventive; Detective; Evidentiary | CAP-GLD-04 | `GOV-GLD` | TB-03, TB-04 | Govern metric meaning and calculation. | Metric version, formula, owner, approval |
| CF-GLD-05 | Curated Data Product Governance | Quality Threshold Controls | Preventive; Detective; Corrective; Evidentiary | CAP-GLD-06 | `GOV-GLD` | TB-03 | Condition certification on quality thresholds. | Threshold version, measured result, status, action |
| CF-GLD-06 | Curated Data Product Governance | Consumption Authorization Controls | Preventive; Evidentiary | CAP-GLD-07 | `GOV-GLD` | TB-03, TB-04, TB-06 | Permit consumption only for approved identity and purpose. | Identity, purpose, asset, allow/deny decision |
| CF-GLD-07 | Curated Data Product Governance | Sensitive Data Minimization Controls | Preventive; Detective; Evidentiary | CAP-SLV-07, CAP-SLV-08 | `GOV-GLD` | TB-03, TB-04 | Minimize sensitive attributes in curated products. | Field inventory, justification, protection disposition |
| CF-SEM-01 | Semantic Governance | Semantic Asset Registration Controls | Preventive; Evidentiary | CAP-SEM-01 | `GOV-SEM` | TB-04 | Register and own semantic assets. | Asset identity, owner, purpose, lifecycle status |
| CF-SEM-02 | Semantic Governance | Metric/Definition Approval Controls | Preventive; Evidentiary | CAP-SEM-02, CAP-SEM-03 | `GOV-SEM` | TB-04 | Approve terms, dimensions, measures, and calculations. | Definition/metric version, approver, decision |
| CF-SEM-03 | Semantic Governance | Semantic Version Controls | Preventive; Evidentiary | CAP-SEM-04 | `GOV-SEM` | TB-04, TB-10 | Make semantic changes and use traceable. | Version, change record, approval, use reference |
| CF-SEM-04 | Semantic Governance | Governed Source Controls | Preventive; Detective; Evidentiary | CAP-SEM-05 | `GOV-SEM` | TB-04 | Restrict semantics to certified sources. | Source mapping, certification status, validation result |
| CF-SEM-05 | Semantic Governance | Authorization Inheritance Controls | Preventive; Evidentiary | CAP-SEM-06 | `GOV-SEM` | TB-04, TB-06 | Prevent semantic access from weakening source policy. | Source entitlements, semantic decision, recipient context |
| CF-SEM-06 | Semantic Governance | Semantic Traceability Controls | Evidentiary | CAP-SEM-07 | `GOV-SEM` | TB-04, TB-10 | Trace results to semantics and governed data. | Request, asset version, definitions, source lineage |
| CF-KNW-01 | Knowledge Governance | Document Registration Controls | Preventive; Evidentiary | CAP-KNW-01, CAP-KNW-02 | `GOV-KNW` | TB-05 | Identify documents and accountable owners. | Document ID, owner, source, registration status |
| CF-KNW-02 | Knowledge Governance | Classification Controls | Preventive; Detective; Evidentiary | CAP-KNW-03 | `GOV-KNW` | TB-05 | Classify sensitivity and permitted use. | Classification, basis, reviewer, timestamp |
| CF-KNW-03 | Knowledge Governance | Authority Controls | Preventive; Evidentiary | CAP-KNW-04 | `GOV-KNW` | TB-05 | Distinguish authoritative from non-authoritative content. | Authority level, source, owner, decision |
| CF-KNW-04 | Knowledge Governance | Approval Controls | Preventive; Evidentiary | CAP-KNW-06 | `GOV-KNW` | TB-05 | Prevent unapproved content from authoritative use. | Approval status, approver, date, scope |
| CF-KNW-05 | Knowledge Governance | Version/Lifecycle Controls | Preventive; Detective; Corrective; Evidentiary | CAP-KNW-05, CAP-KNW-07 | `GOV-KNW` | TB-05, TB-10 | Exclude obsolete, expired, or superseded knowledge. | Version, effective/expiry dates, lifecycle disposition |
| CF-KNW-06 | Knowledge Governance | AI Eligibility Controls | Preventive; Evidentiary | CAP-KNW-08 | `GOV-KNW` | TB-05, TB-06 | Admit only eligible knowledge to AI use. | Eligibility inputs, decision, policy/version |
| CF-KNW-07 | Knowledge Governance | Retrieval Authorization Controls | Preventive; Evidentiary | CAP-KNW-09 | `GOV-KNW` | TB-05, TB-06 | Authorize retrieval by identity and purpose. | Requester context, document scope, allow/deny decision |
| CF-KNW-08 | Knowledge Governance | Citation/Source Trace Controls | Detective; Evidentiary | CAP-KNW-10 | `GOV-KNW` | TB-05, TB-09, TB-10 | Link retrieved evidence to source and passage. | Document/version, passage, retrieval event, citation |
| CF-KNW-09 | Knowledge Governance | Instruction Isolation Controls | Preventive; Detective; Evidentiary | CAP-KNW-11, CAP-INP-05 | `GOV-KNW` | TB-05, TB-06 | Keep retrieved evidence from overriding instructions. | Content origin, isolation decision, detected conflicts |
| CF-AI-01 | AI Governance | AI Asset Registration Controls | Preventive; Evidentiary | CAP-AI-01, CAP-AI-05 | `GOV-AI` | TB-06 | Identify AI assets, purpose, and owners. | Asset ID, owner, purpose, lifecycle status |
| CF-AI-02 | AI Governance | Model Approval Controls | Preventive; Evidentiary | CAP-AI-02, CAP-AI-07 | `GOV-AI` | TB-06 | Use only approved models for stated purpose and risk. | Model, approval, scope, conditions |
| CF-AI-03 | AI Governance | Model Version Controls | Preventive; Evidentiary | CAP-AI-02 | `GOV-AI` | TB-06, TB-10 | Bind each invocation to a model version. | Model/version, deployment reference, invocation ID |
| CF-AI-04 | AI Governance | Prompt Version Controls | Preventive; Evidentiary | CAP-AI-03 | `GOV-AI` | TB-06, TB-10 | Identify and govern material prompt versions. | Prompt ID/version, approval, invocation reference |
| CF-AI-05 | AI Governance | AI Purpose Controls | Preventive; Detective; Evidentiary | CAP-AI-04 | `GOV-AI` | TB-06, TB-07 | Restrict AI use to approved purpose. | Purpose, prohibited-use boundary, context decision |
| CF-AI-06 | AI Governance | AI Risk Classification Controls | Preventive; Detective; Evidentiary | CAP-AI-06 | `GOV-AI` | TB-06, TB-07 | Assign oversight proportionate to AI risk. | Risk assessment, classification, reviewer, date |
| CF-AI-07 | AI Governance | Evaluation Controls | Preventive; Detective; Corrective; Evidentiary | CAP-AI-08 | `GOV-AI` | TB-06, TB-09, TB-10 | Evaluate quality, safety, and governance criteria. | Evaluation version, dataset reference, results, disposition |
| CF-AI-08 | AI Governance | Groundedness Controls | Detective; Corrective; Evidentiary | CAP-AI-09 | `GOV-AI` | TB-06, TB-09 | Detect and route unsupported evidence-dependent output. | Claims, evidence references, score/result, disposition |
| CF-AI-09 | AI Governance | Responsible AI Controls | Preventive; Detective; Corrective; Evidentiary | CAP-AI-11 | `GOV-AI` | TB-06, TB-09 | Control relevant responsible AI risks. | Control results, affected interaction, action taken |
| CF-AI-10 | AI Governance | Monitoring Controls | Detective; Corrective; Evidentiary | CAP-AI-10 | `GOV-AI` | TB-06, TB-10 | Detect performance or control degradation. | Metric period, threshold, breach, remediation |
| CF-AGT-01 | Agentic AI Governance | Agent Registration Controls | Preventive; Evidentiary | CAP-AGT-01, CAP-AGT-03 | `GOV-AGT` | TB-07 | Identify Agent, version, and owners. | Agent ID/version, owner, lifecycle status |
| CF-AGT-02 | Agentic AI Governance | Agent Purpose Controls | Preventive; Detective; Evidentiary | CAP-AGT-02 | `GOV-AGT` | TB-07 | Keep Agent behavior within approved purpose. | Purpose, boundaries, execution context, result |
| CF-AGT-03 | Agentic AI Governance | Tool Authorization Controls | Preventive; Evidentiary | CAP-AGT-04 | `GOV-AGT` | TB-07, TB-08 | Expose and invoke only authorized tools. | Agent, tool, scope, authorization decision |
| CF-AGT-04 | Agentic AI Governance | Data/Knowledge Scope Controls | Preventive; Evidentiary | CAP-AGT-05, CAP-AGT-06 | `GOV-AGT` | TB-05, TB-06, TB-07 | Restrict Agent to authorized domains. | Identity, domain scope, asset decision, policy |
| CF-AGT-05 | Agentic AI Governance | Delegated Authority Controls | Preventive; Evidentiary | CAP-AGT-07 | `GOV-AGT` | TB-07, TB-08 | Prevent Agent authority exceeding user delegation. | User, delegation, Agent scope, decision |
| CF-AGT-06 | Agentic AI Governance | Execution Authorization Controls | Preventive; Evidentiary | CAP-AGT-08 | `GOV-AGT` | TB-08 | Re-authorize every proposed action at execution. | Action, parameters, context, allow/deny decision |
| CF-AGT-07 | Agentic AI Governance | Human Approval Controls | Preventive; Evidentiary | CAP-AGT-09 | `GOV-AGT` | TB-08 | Require accountable approval for material actions. | Request, approver, decision, rationale, timestamp |
| CF-AGT-08 | Agentic AI Governance | Denied Action Controls | Preventive; Corrective; Evidentiary | CAP-AGT-10 | `GOV-AGT` | TB-08, TB-10 | Prevent side effects and preserve denial evidence. | Denied action, policy reason, Agent/user, timestamp |
| CF-AGT-09 | Agentic AI Governance | Agent Trace Controls | Evidentiary | CAP-AGT-11 | `GOV-AGT` | TB-07, TB-08, TB-09, TB-10 | Reconstruct planning, evidence, tools, and decisions. | Agent trace, tool calls, control results, output link |
| CF-INP-01 | Input & Prompt Governance | Input Validation Controls | Preventive; Detective; Evidentiary | CAP-INP-01 | `GOV-INP` | TB-06 | Reject or route invalid and prohibited input. | Validation rules/version, findings, disposition |
| CF-INP-02 | Input & Prompt Governance | Identity Context Controls | Preventive; Evidentiary | CAP-INP-02 | `GOV-INP` | TB-06, TB-07, TB-08 | Preserve verified identity and authorization context. | Identity, persona, purpose, entitlement context |
| CF-INP-03 | Input & Prompt Governance | Prompt Injection Controls | Preventive; Detective; Corrective; Evidentiary | CAP-INP-03 | `GOV-INP` | TB-05, TB-06 | Resist and route injection attempts. | Detection, source, blocked instruction, disposition |
| CF-INP-04 | Input & Prompt Governance | Malicious Instruction Controls | Preventive; Detective; Evidentiary | CAP-INP-04 | `GOV-INP` | TB-05, TB-06 | Prevent malicious instructions overriding policy. | Instruction source, conflict, decision, policy |
| CF-INP-05 | Input & Prompt Governance | Untrusted Content Controls | Preventive; Detective; Evidentiary | CAP-INP-05 | `GOV-INP` | TB-05, TB-06 | Treat retrieved/tool content as untrusted where appropriate. | Content origin, trust treatment, isolation result |
| CF-INP-06 | Input & Prompt Governance | Safe Logging Controls | Preventive; Evidentiary | CAP-INP-06 | `GOV-INP` | TB-06, TB-10 | Log trace context without excess sensitive data. | Minimized log, masking decision, correlation ID |
| CF-OUT-01 | Output Governance | Sensitive Output Controls | Detective; Corrective; Evidentiary | CAP-OUT-01 | `GOV-OUT` | TB-09 | Detect sensitive output before release. | Finding, classification, affected output, disposition |
| CF-OUT-02 | Output Governance | Recipient Authorization Controls | Preventive; Evidentiary | CAP-OUT-02 | `GOV-OUT` | TB-09 | Match response detail to recipient authorization. | Recipient context, purpose, allow/deny decision |
| CF-OUT-03 | Output Governance | Masking/Redaction Controls | Preventive; Corrective; Evidentiary | CAP-OUT-03 | `GOV-OUT` | TB-09 | Mask, redact, or block unauthorized content. | Detected content, action, policy, released reference |
| CF-OUT-04 | Output Governance | Groundedness Controls | Detective; Corrective; Evidentiary | CAP-OUT-04 | `GOV-OUT` | TB-09 | Prevent unsupported claims being presented as fact. | Claim/evidence links, result, disposition |
| CF-OUT-05 | Output Governance | Citation/Evidence Controls | Detective; Evidentiary | CAP-OUT-05 | `GOV-OUT` | TB-09, TB-10 | Validate material evidence and citations. | Citation, source/version, validation result |
| CF-OUT-06 | Output Governance | Unsupported Claim Controls | Detective; Corrective; Evidentiary | CAP-OUT-06 | `GOV-OUT` | TB-09 | Remove, qualify, or route unsupported claims. | Claim, support assessment, action taken |
| CF-OUT-07 | Output Governance | Abstention Controls | Preventive; Corrective; Evidentiary | CAP-OUT-07 | `GOV-OUT` | TB-09 | Abstain when evidence or authorization is insufficient. | Trigger, reason, abstention response, evidence gap |
| CF-OUT-08 | Output Governance | Restricted Action Controls | Preventive; Corrective; Evidentiary | CAP-OUT-08 | `GOV-OUT` | TB-08, TB-09 | Deny or escalate restricted action requests. | Request, restriction, denial/escalation, policy |
| CF-OUT-09 | Output Governance | Output Audit Controls | Evidentiary | CAP-OUT-09 | `GOV-OUT` | TB-09, TB-10 | Trace final response and release disposition. | Output reference, recipient, controls, disposition |
| CF-AUD-01 | Observability, Evidence & Audit Governance | Correlation Controls | Preventive; Evidentiary | CAP-AUD-01 | `GOV-AUD` | TB-01, TB-02, TB-03, TB-04, TB-05, TB-06, TB-07, TB-08, TB-09, TB-10 | Correlate material events end to end. | Trace/correlation ID and linked event references |
| CF-AUD-02 | Observability, Evidence & Audit Governance | Evidence Capture Controls | Evidentiary | CAP-AUD-02 | `GOV-AUD` | TB-01, TB-02, TB-03, TB-04, TB-05, TB-06, TB-07, TB-08, TB-09, TB-10 | Record material control execution and decision. | Control ID, asset/request, result, policy, time |
| CF-AUD-03 | Observability, Evidence & Audit Governance | Lineage Evidence Controls | Evidentiary | CAP-AUD-03 | `GOV-AUD` | TB-01, TB-02, TB-03, TB-04 | Preserve source-to-semantic lineage evidence. | Asset/version links, transformation runs, result trace |
| CF-AUD-04 | Observability, Evidence & Audit Governance | AI Invocation Evidence Controls | Evidentiary | CAP-AUD-04 | `GOV-AUD` | TB-06, TB-10 | Evidence AI request, context, versions, and output. | Invocation ID, prompt/model versions, evidence, result |
| CF-AUD-05 | Observability, Evidence & Audit Governance | Agent/Tool Evidence Controls | Evidentiary | CAP-AUD-05 | `GOV-AUD` | TB-07, TB-08, TB-10 | Evidence Agent decisions and tool outcomes. | Agent/version, tool request, authorization, result |
| CF-AUD-06 | Observability, Evidence & Audit Governance | Human Decision Evidence Controls | Evidentiary | CAP-AUD-06 | `GOV-AUD` | TB-08, TB-10 | Attribute approvals, rejections, and escalations. | Human identity, decision, rationale, timestamp |
| CF-AUD-07 | Observability, Evidence & Audit Governance | Evaluation Evidence Controls | Evidentiary | CAP-AUD-09 | `GOV-AUD` | Link evaluation results to governed assets and use. | Evaluation/version, target asset, results, disposition |
| CF-AUD-08 | Observability, Evidence & Audit Governance | Output Disposition Evidence Controls | Evidentiary | CAP-AUD-08 | `GOV-AUD` | Evidence release, masking, blocking, or abstention. | Output reference, control results, disposition, recipient |
| CF-AUD-09 | Observability, Evidence & Audit Governance | Audit Reconstruction Controls | Detective; Evidentiary | CAP-AUD-10 | `GOV-AUD` | Reconstruct the material decision path. | Correlated source, data, knowledge, AI, Agent, output trail |
| CF-AUD-10 | Observability, Evidence & Audit Governance | Evidence Protection Controls | Preventive; Detective; Corrective; Evidentiary | CAP-AUD-11 | `GOV-AUD` | Protect evidence integrity, access, and retention. | Classification, access, integrity result, retention disposition |

## 5. Control Design Principles

### Least Privilege

Controls must enforce minimum access appropriate to identity, purpose, and context.

### Data Minimization

Controls must prevent unnecessary propagation, retrieval, display, or logging of sensitive information.

### Policy Enforcement

Controls must produce deterministic allow, deny, mask, redact, quarantine, abstain, escalate, or approval-required outcomes where applicable.

### Control Evidence

A material control execution should produce evidence sufficient to verify:

- what control executed;
- why it executed;
- what asset, request, or action it evaluated;
- what decision was made;
- when it executed;
- the relevant policy and version where applicable;
- the correlation or trace identity.

### Governance Inheritance

Downstream controls cannot weaken mandatory upstream governance. Semantic, knowledge, AI, Agent, tool, output, and audit use must preserve applicable underlying restrictions.

### Human Accountability

Agent recommendation, human approval, and authorized execution remain separate:

**Recommend ≠ Approve ≠ Execute**

## 6. Control Outcome Taxonomy

- `ALLOW`
- `DENY`
- `MASK`
- `REDACT`
- `QUARANTINE`
- `ABSTAIN`
- `ESCALATE`
- `REQUIRE_APPROVAL`
- `FLAG_FOR_REVIEW`
- `PASS`
- `FAIL`

These are conceptual governance outcomes only. G0.4 does not implement enums, database objects, or application code.

## 7. Evidence Categories

- **Source Evidence:** Origin, source identity, extraction, and ingestion context.
- **Data Quality Evidence:** Validation, quality, duplicate, quarantine, and remediation results.
- **Classification Evidence:** Sensitivity, confidentiality, purpose, and permitted-use classification.
- **Authorization Evidence:** Identity, persona, purpose, entitlement, policy, and access decision.
- **Lineage Evidence:** Source, transformation, dataset, semantic, and result relationships.
- **Policy Evidence:** Policy identity, version, applicability, and decision basis.
- **Semantic Evidence:** Semantic asset, definition, metric, version, and source mapping.
- **Knowledge Evidence:** Document identity, owner, authority, version, lifecycle, eligibility, and retrieval.
- **AI Evidence:** AI asset, prompt/model version, invocation, control, and monitoring context.
- **Agent Evidence:** Agent identity/version, purpose, plan, delegated authority, and decision trace.
- **Tool Evidence:** Tool identity, request, parameters where safe, authorization, and result.
- **Human Decision Evidence:** Approver, decision, rationale, scope, and timestamp.
- **Output Evidence:** Final response reference, recipient, controls, and disposition.
- **Evaluation Evidence:** Evaluation identity/version, criteria, target, result, and disposition.
- **Audit Evidence:** Correlated evidence supporting end-to-end reconstruction and assurance.

Evidence should reference sensitive content where possible rather than unnecessarily duplicate it. Evidence itself must be classified, access-controlled, integrity-protected, and retained appropriately.

## 8. Trust Boundary Alignment

Control families operate across the approved boundaries `TB-01` through `TB-10`. Preventive controls determine whether a crossing may proceed; detective controls identify issues during or after the crossing; corrective controls isolate, remediate, or route issues; and evidentiary controls record the context and outcome. A control family may span multiple boundaries, but each material use must re-evaluate the context appropriate to that boundary. No additional trust boundaries are defined in G0.4.

## 9. Future Traceability

**Business Objective → Governance Requirement → Capability → Control Family → Control → Execution → Evidence → Test → Audit**

G0.4 defines only capabilities, control families, control types, expected outcomes, and expected evidence. Actual controls, executions, tests, audit mechanisms, and vendor implementation are deferred.
