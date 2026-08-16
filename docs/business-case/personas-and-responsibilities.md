# Personas and Governance Responsibilities

This document defines business authorization intent and governance accountability for the six approved personas in the **Trusted Banking Operations AI** lighthouse. It describes information needs and decision responsibilities without defining platform roles, privileges, or physical controls.

## 1. Banking Operations Analyst

### Business Purpose

Investigate assigned payment exceptions efficiently and consistently using governed operational evidence and approved policy knowledge.

### Primary Responsibilities

- Establish the facts and operational context of assigned exceptions.
- Gather relevant evidence and identify data-quality or SLA concerns.
- Interpret approved procedures within delegated responsibility.
- Develop or review recommendations and escalate when authority or evidence is insufficient.

### Required Information Access

Operational exception data, relevant payment details, minimized customer/account context, SLA metrics, governed business metrics, approved policy knowledge, data-quality status, and investigation-specific lineage.

### Sensitive Information Expectations

Sensitive customer and payment information should be minimized by default. Necessary attributes may be visible or masked according to investigation purpose; unrelated sensitive attributes remain restricted.

### AI/Agent Interaction

May ask investigation questions, request governed evidence, receive AI-assisted summaries and recommendations, and initiate only controlled escalation capabilities within delegated authority.

### Decision Authority

May investigate, form recommendations, and escalate. May not independently approve or execute material actions unless a future approved policy explicitly grants that authority. The AI Agent is never the accountable decision-maker.

### Governance Responsibilities

Use information only for assigned purposes, respect handling restrictions, verify material evidence, identify unsupported conclusions, record rationale, and avoid disclosing sensitive information unnecessarily.

## 2. Banking Operations Manager

### Business Purpose

Oversee exception operations, SLA performance, prioritization, consistency, and accountable resolution or escalation.

### Primary Responsibilities

- Monitor operational trends and exception backlogs.
- Review investigation quality and AI-assisted recommendations.
- Approve or escalate actions within delegated business authority.
- Ensure material decisions remain attributable and policy-aligned.

### Required Information Access

Operational exception and payment context, minimized customer/account context, SLA and governed business metrics, approved policy knowledge, investigation evidence, and relevant control or escalation status.

### Sensitive Information Expectations

Sensitive information should remain minimized and purpose-bound. Detail may be visible where necessary for oversight or approval, while unrelated attributes remain masked or restricted.

### AI/Agent Interaction

May use AI-assisted trend analysis, review supporting evidence and recommendations, request clarification, approve or reject eligible escalations, and invoke controlled capabilities within business authority.

### Decision Authority

May review, approve, reject, or escalate recommendations within delegated authority. Approval and execution remain distinct, and the AI Agent cannot assume the manager's accountability.

### Governance Responsibilities

Confirm evidence sufficiency, policy applicability, authorization, and separation of duties; document approvals or rejections; and ensure exceptions requiring broader authority are escalated.

## 3. Data Steward

### Business Purpose

Ensure governed data and business definitions are understandable, classified, quality-controlled, owned, and fit for approved use.

### Primary Responsibilities

- Steward data definitions, classifications, quality expectations, and ownership metadata.
- Review lineage, quality exceptions, and fitness-for-use concerns.
- Support consistent metric and semantic interpretation.
- Coordinate remediation or escalation of material data issues.

### Required Information Access

Data definitions, classifications, schema and quality metadata, lineage, transformation context, governed metric definitions, stewardship evidence, and limited record-level examples needed to diagnose issues.

### Sensitive Information Expectations

Sensitive values are generally masked, minimized, or restricted. Limited visibility may be justified for specific stewardship investigations, with purpose and access evidenced.

### AI/Agent Interaction

May review how governed data and definitions are used, investigate data-related AI quality concerns, and use controlled assistance for lineage or quality analysis. Does not approve operational payment actions.

### Decision Authority

May review and approve data definitions, classifications, quality dispositions, or stewardship decisions within assigned accountability; recommends or escalates business-impacting concerns.

### Governance Responsibilities

Maintain authoritative metadata, ensure quality and classification decisions are evidenced, guard against unnecessary propagation, and communicate limitations affecting business or AI use.

## 4. AI Governance / Model Risk Officer

### Business Purpose

Oversee the acceptable, evaluated, and accountable use of AI and Agent capabilities for the approved business purpose.

### Primary Responsibilities

- Govern AI and Agent purpose, ownership, risk classification, evaluation, approval, monitoring, and material change.
- Review groundedness, quality, safety, and responsible AI evidence.
- Assess model, prompt, Agent, and tool-related risks.
- Require remediation, restriction, escalation, or suspension when controls are insufficient.

### Required Information Access

AI and Agent asset metadata, prompt and model versions, evaluation evidence, summarized test inputs and outputs, Agent execution traces, tool authorization outcomes, monitoring results, and relevant governance evidence.

### Sensitive Information Expectations

Operational and customer content should normally be minimized, masked, or represented through safe evidence. Direct sensitive values are restricted unless specifically necessary and authorized for risk investigation.

### AI/Agent Interaction

Primarily reviews and evaluates AI/Agent behavior and evidence rather than conducting payment investigations. May execute approved test scenarios or request controlled diagnostic evidence.

### Decision Authority

May recommend, review, approve, condition, restrict, or escalate AI/Agent use within the defined governance lifecycle. Does not make operational payment decisions.

### Governance Responsibilities

Ensure approved-purpose use, version traceability, evaluation sufficiency, control effectiveness, human accountability, and evidence of AI/Agent approval and monitoring decisions.

## 5. Compliance / Risk Officer

### Business Purpose

Oversee policy compliance, sensitive-data handling, control expectations, and risk treatment for the lighthouse.

### Primary Responsibilities

- Interpret applicable approved policies and control obligations.
- Review sensitive-data use, authorization intent, and material risk issues.
- Assess control evidence and policy exceptions.
- Require escalation, remediation, or additional approval where warranted.

### Required Information Access

Approved policy knowledge, classifications, access and authorization evidence, investigation and decision rationale where relevant, control results, denied actions, output dispositions, and audit evidence.

### Sensitive Information Expectations

Sensitive content should be minimized and generally masked. Limited visibility is permitted only when necessary for an authorized compliance or risk review.

### AI/Agent Interaction

May review policy interpretation, inspect governed AI/Agent evidence, assess sensitive outputs or denied actions, and request controlled analysis. Does not delegate compliance accountability to AI.

### Decision Authority

May review, approve, reject, or escalate policy and risk dispositions within assigned authority. Operational investigation and payment decisions remain with authorized operations roles.

### Governance Responsibilities

Maintain independence appropriate to oversight, document policy interpretations and exceptions, verify purpose limitation and least privilege, and ensure material risk decisions are evidenced.

## 6. Internal Auditor

### Business Purpose

Independently assess whether governance controls and accountable processes are designed and operating with reconstructable evidence.

### Primary Responsibilities

- Trace selected investigations and decisions end to end.
- Assess control design, execution evidence, and separation of duties.
- Identify evidence gaps or control exceptions.
- Report assurance conclusions without operating the process being audited.

### Required Information Access

Read-only audit evidence, lineage, data-quality evidence, policy and asset versions, authorization decisions, AI evaluation evidence, Agent execution traces, tool-call outcomes, human approval records, and output dispositions.

### Sensitive Information Expectations

Evidence-only access is preferred. Sensitive values should be masked, minimized, or restricted unless a defined audit objective requires authorized access.

### AI/Agent Interaction

May use controlled capabilities to locate and correlate evidence but does not conduct operational investigations, approve actions, or operate the controls under review.

### Decision Authority

May assess, challenge, report, and escalate assurance findings. Does not approve operational actions or become accountable for management decisions.

### Governance Responsibilities

Preserve independence, protect audit evidence, maintain traceability of assurance work, distinguish evidence from assertion, and report missing or unreliable evidence.

## Persona Access Matrix

| Information / Capability | Operations Analyst | Operations Manager | Data Steward | AI Governance / Model Risk | Compliance / Risk | Internal Auditor |
| ------------------------ | ------------------ | ------------------ | ------------ | -------------------------- | ----------------- | ---------------- |
| Operational exception data | Required | Required | Limited | Evidence Only | Limited | Evidence Only |
| Customer context | Limited | Limited | Not Required | Evidence Only | Limited | Evidence Only |
| Sensitive customer attributes | Masked | Limited | Masked | Masked | Limited | Masked |
| Payment details | Required | Required | Limited | Evidence Only | Limited | Evidence Only |
| SLA metrics | Required | Required | Oversight | Evidence Only | Oversight | Evidence Only |
| Governed business metrics | Required | Required | Oversight | Evidence Only | Oversight | Evidence Only |
| Policy knowledge | Required | Required | Limited | Oversight | Required | Evidence Only |
| Data-quality evidence | Required | Oversight | Required | Evidence Only | Oversight | Evidence Only |
| Lineage | Limited | Oversight | Required | Evidence Only | Oversight | Evidence Only |
| AI evaluation evidence | Not Required | Oversight | Limited | Required | Oversight | Evidence Only |
| Agent execution traces | Limited | Oversight | Not Required | Required | Oversight | Evidence Only |
| Governance control evidence | Limited | Oversight | Oversight | Required | Required | Evidence Only |
| Audit evidence | Not Required | Oversight | Limited | Oversight | Required | Required |
| Recommendation capability | Required | Required | Not Required | Oversight | Oversight | Evidence Only |
| Controlled action/escalation capability | Limited | Required | Not Required | Oversight | Oversight | Evidence Only |

The matrix represents **business authorization intent**, not physical access-control implementation. Actual authorization must later consider identity, assigned purpose, sensitivity, context, separation of duties, and approved policy.
