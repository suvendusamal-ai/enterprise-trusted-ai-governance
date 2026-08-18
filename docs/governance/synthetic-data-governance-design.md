# Synthetic Data Governance Design

## 1. Purpose

Synthetic data allows the lighthouse to demonstrate realistic banking-data governance without using real customer information. **Synthetic does not mean ungoverned.** Fictional values receive realistic classification, minimization, authorization, quality, lineage, output, and audit treatment so governance behavior can be proven safely.

## 2. Synthetic Data Safety Rules

- Never use or copy real customer or bank records.
- Never use real account, card, transaction, or reference numbers.
- Never scrape personal information or derive fictional identities from real people.
- Generate visibly fictional identities and synthetic-only identifier formats.
- Mark datasets and documents as synthetic through dataset/document metadata.
- Keep generation deterministic and reproducible.
- Never include credentials, secrets, tokens, keys, or connection strings.
- Review generated text and values for accidental resemblance to real sensitive data before release.

## 3. Classification Design

| Data Attribute/Group | Synthetic Sensitivity | Expected Bronze Treatment | Expected Silver Treatment | Expected Gold Treatment |
| --- | --- | --- | --- | --- |
| Customer name | Direct Personal Identifier | Preserve, classify, restrict | Protect and minimize | Exclude or mask unless necessary |
| Email/phone | Contact Data | Preserve, classify, restrict | Validate, protect, minimize | Normally exclude |
| Address | Direct Personal Identifier | Preserve, classify, restrict | Standardize and minimize | City/state/country only where justified |
| Date of birth | Direct Personal Identifier | Preserve, classify, restrict | Validate and protect | Exclude or derive approved non-identifying band |
| Account identifier | Financially Sensitive | Preserve and restrict | Validate and protect | Synthetic surrogate/minimized identifier |
| Available balance | Financially Sensitive | Preserve and restrict | Validate and purpose-protect | Exclude unless approved analysis needs it |
| Payment amount | Financially Sensitive | Preserve and classify | Validate and protect | Retain where needed for governed metrics |
| Beneficiary context | Financially Sensitive | Preserve and restrict | Validate and minimize | Aggregate/category or approved minimal fields |
| Exception details | Operational Sensitive | Preserve and classify | Validate and protect | Necessary analytical attributes only |
| Operations user ID | Operational Sensitive | Preserve and restrict | Validate and purpose-protect | Team/role context or pseudonymous ID |
| Reference data | Internal/Reference | Preserve provenance | Validate lifecycle and definitions | Approved active definitions only |
| Aggregated metrics | Governed Business Information | Not normally source data | Derivation evidence | Certified, purpose-authorized metrics |

No Snowflake tags are created by this design.

## 4. Data Minimization Rules

- Customer name is unnecessary for trend analytics.
- Email and phone do not enter Gold trend products.
- Full address does not enter semantic metrics.
- Available balance is retained only for an approved operational need.
- Raw beneficiary detail is not exposed unless necessary and authorized.
- Customer context favors synthetic surrogate identifiers and approved categories.
- AI context contains only necessary authorized evidence.
- Audit evidence references sensitive source records instead of copying their values.

No masking or policy implementation occurs in G2.1.

## 5. Data Quality Injection Governance

Every deliberately defective record is generated intentionally, uniquely traceable to DQ-01 through DQ-08, associated with an expected outcome, repeatable under the seed, and prevented from silently becoming trusted Gold data. Later generation metadata or a test manifest should identify defects externally. Business records should not receive a visible `is_bad_data` attribute unless later physical design explicitly approves it.

## 6. Synthetic Document Governance

| State | Intended use |
| --- | --- |
| Current approved authoritative | `POL-001`, `POL-002`, `POL-003` policy evidence |
| Current approved procedural | `PROC-001`, `PROC-002` operational procedure evidence |
| Guidance/non-authoritative | `GUID-001`, clearly lower authority |
| Expired | `POL-OLD-001`, excluded from current authoritative use |
| Unapproved | Optional later negative document state, not authoritative |
| Malicious test artifact | `DOC-MAL-001`, non-authoritative and instruction-isolated |

All documents require identity/version, source, owner, classification, authority, approval, lifecycle, AI eligibility, permitted purpose, authorization scope, and synthetic status. TB-05 governs retrieval; TB-06 separately governs AI-context admission.

## 7. Persona-Based Visibility Intent

| Data Category | Operations Analyst | Operations Manager | Data Steward | AI Governance / Model Risk | Compliance / Risk | Internal Auditor |
| --- | --- | --- | --- | --- | --- | --- |
| Exception/payment facts | Required | Required | Limited | Evidence Only | Limited | Evidence Only |
| Minimized customer context | Required | Required | Masked | Evidence Only | Limited | Evidence Only |
| Direct personal identifiers | Masked | Limited | Masked | Masked | Limited | Masked |
| Account/balance detail | Limited | Limited | Masked | Not Required | Limited | Evidence Only |
| SLA and operational metrics | Required | Required | Oversight | Evidence Only | Oversight | Evidence Only |
| Classification/quality/lineage | Limited | Oversight | Required | Evidence Only | Oversight | Evidence Only |
| Policy knowledge | Required | Required | Limited | Oversight | Required | Evidence Only |
| AI/Agent evaluation and traces | Limited | Oversight | Not Required | Required | Oversight | Evidence Only |
| Authorization/output decisions | Limited | Oversight | Oversight | Required | Required | Evidence Only |
| Correlated audit evidence | Not Required | Oversight | Limited | Oversight | Required | Required |

This matrix expresses business intent, not physical roles.

## 8. Governance Test Data Manifest Design

A future external manifest should record `scenario_id`, `entity`, `record_or_document_id`, `scenario_type`, `expected_governance_outcome`, `acceptance_criteria_family`, and `notes`. It will bind deterministic anchors and defects to tests without contaminating business records. No manifest file is created now.

## 9. Synthetic Data Lifecycle

**Generate → Source → Bronze → Validate/Protect → Silver → Certify/Minimize → Gold → Semantic/Knowledge → AI/Agent → Output → Evidence**

Generated source files remain synthetic but are treated as external source representations for demonstration. **Governance begins at Bronze.** Higher layers cannot weaken lower-layer controls. **Retrieved ≠ Admitted to AI Context.** **Recommend ≠ Approve ≠ Execute.** Every released response uses Output Governance because **the final AI/Agent response is a governed artifact.**

## 10. Governance Evidence Expectations

Future implementation must prove provenance, classification, quality results, quarantine, minimization, authorization, document eligibility, retrieval decisions, AI-context admission, Agent/tool authorization, human approval where required, output disposition, and end-to-end audit correlation. Evidence must be protected, minimized, deterministic for anchors, and connected through stable identifiers.
