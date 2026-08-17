# Governance Traceability Matrix

## 1. Purpose

This matrix provides end-to-end traceability from approved governance requirements to capabilities, control families, trust boundaries, evidence expectations, and future acceptance tests. It is the primary governance traceability reference for later architecture, implementation, testing, observability, and audit work. It maps—but does not redefine—the 115 approved requirements.

## 2. Traceability Chain

**Business Objective → Governance Requirement → Capability → Control Family → Trust Boundary → Evidence → Acceptance Criterion**

A business objective states the desired business outcome; a governance requirement states the mandatory expectation; a capability states what governance must be able to achieve; a control family groups future safeguards; a trust boundary identifies where the requirement becomes material; evidence makes execution verifiable; and an acceptance criterion defines observable future proof.

## 3. Business Objective Identifiers

- `BO-01` — Govern data continuously from ingestion through trusted consumption.
- `BO-02` — Protect sensitive banking/customer information through least privilege and minimization.
- `BO-03` — Ensure trusted, quality-controlled, traceable business data and metrics.
- `BO-04` — Govern enterprise knowledge used by AI.
- `BO-05` — Govern AI models, prompts, purpose, risk, and evaluation.
- `BO-06` — Govern Agent identity, tools, delegated authority, and actions.
- `BO-07` — Protect against malicious or unauthorized input and instruction.
- `BO-08` — Govern final AI/Agent output before release.
- `BO-09` — Preserve human accountability for material banking actions.
- `BO-10` — Produce end-to-end verifiable governance and audit evidence.

These are traceability identifiers, not new governance requirements. They summarize approved business outcomes and governance principles. BO-02 and BO-09 are cross-cutting objectives additionally realized through minimization, authorization, and human-approval mappings across the matrix.

## 4. Requirement-to-Capability Mapping

Each requirement appears exactly once in the detailed matrix and maps specifically to an approved capability. The requirement text remains authoritative in `end-to-end-governance-requirements.md`.

## 5. Capability-to-Control-Family Mapping

Every requirement maps to at least one existing `CF-*` family. Detailed future controls may refine a row by adding approved families without removing traceability silently.

## 6. Trust-Boundary Mapping

Each row identifies only the approved boundary or boundaries where its governance decision is material. Earlier governance never grants implicit downstream authorization.

## 7. Evidence Mapping

Evidence uses only the approved categories and should reference sensitive content rather than duplicate it unnecessarily.

## 8. Traceability Matrix

| Requirement ID | Business Objective | Capability ID(s) | Control Family ID(s) | Trust Boundary | Evidence Category | Future Acceptance Criterion ID |
| -------------- | ------------------ | ---------------- | -------------------- | -------------- | ----------------- | ------------------------------ |
| GOV-BRZ-001 | BO-01 | CAP-BRZ-01 | CF-BRZ-01 | TB-01 | Source Evidence; Audit Evidence | AC-BRZ-01 |
| GOV-BRZ-002 | BO-01 | CAP-BRZ-02 | CF-BRZ-02 | TB-01 | Source Evidence; Audit Evidence | AC-BRZ-02 |
| GOV-BRZ-003 | BO-01 | CAP-BRZ-02 | CF-BRZ-02 | TB-01 | Source Evidence; Audit Evidence | AC-BRZ-03 |
| GOV-BRZ-004 | BO-01 | CAP-BRZ-02 | CF-BRZ-07 | TB-01 | Source Evidence; Lineage Evidence; Audit Evidence | AC-BRZ-04 |
| GOV-BRZ-005 | BO-01 | CAP-BRZ-03 | CF-BRZ-05 | TB-01 | Source Evidence; Audit Evidence | AC-BRZ-05 |
| GOV-BRZ-006 | BO-02 | CAP-BRZ-04 | CF-BRZ-03 | TB-01 | Classification Evidence; Audit Evidence | AC-BRZ-06 |
| GOV-BRZ-007 | BO-02 | CAP-BRZ-05 | CF-BRZ-04 | TB-01 | Classification Evidence; Audit Evidence | AC-BRZ-07 |
| GOV-BRZ-008 | BO-01 | CAP-BRZ-01; CAP-BRZ-05 | CF-BRZ-02; CF-BRZ-04 | TB-01 | Source Evidence; Classification Evidence; Audit Evidence | AC-BRZ-08 |
| GOV-BRZ-009 | BO-02 | CAP-BRZ-07 | CF-BRZ-05 | TB-01 | Authorization Evidence; Audit Evidence | AC-BRZ-09 |
| GOV-BRZ-010 | BO-01 | CAP-BRZ-06 | CF-BRZ-06 | TB-01; TB-10 | Policy Evidence; Audit Evidence | AC-BRZ-10 |
| GOV-BRZ-011 | BO-10 | CAP-BRZ-02 | CF-BRZ-07 | TB-01; TB-10 | Source Evidence; Audit Evidence | AC-BRZ-11 |
| GOV-SLV-001 | BO-03 | CAP-SLV-01 | CF-SLV-01 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-01 |
| GOV-SLV-002 | BO-03 | CAP-SLV-02 | CF-SLV-02 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-02 |
| GOV-SLV-003 | BO-03 | CAP-SLV-03 | CF-SLV-03 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-03 |
| GOV-SLV-004 | BO-03 | CAP-SLV-04 | CF-SLV-04 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-04 |
| GOV-SLV-005 | BO-03 | CAP-SLV-05 | CF-SLV-05 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-05 |
| GOV-SLV-006 | BO-02 | CAP-SLV-08 | CF-SLV-07 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-06 |
| GOV-SLV-007 | BO-02 | CAP-SLV-07 | CF-SLV-06 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-07 |
| GOV-SLV-008 | BO-02 | CAP-SLV-08 | CF-SLV-07 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-08 |
| GOV-SLV-009 | BO-02 | CAP-SLV-08 | CF-SLV-07 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-09 |
| GOV-SLV-010 | BO-03 | CAP-SLV-06 | CF-SLV-08 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-10 |
| GOV-SLV-011 | BO-03 | CAP-SLV-02 | CF-SLV-02 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-11 |
| GOV-SLV-012 | BO-03 | CAP-SLV-05 | CF-SLV-05 | TB-02 | Data Quality Evidence; Lineage Evidence | AC-SLV-12 |
| GOV-GLD-001 | BO-03 | CAP-GLD-01 | CF-GLD-01 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-01 |
| GOV-GLD-002 | BO-03 | CAP-GLD-03 | CF-GLD-02 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-02 |
| GOV-GLD-003 | BO-03 | CAP-GLD-02 | CF-GLD-03 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-03 |
| GOV-GLD-004 | BO-03 | CAP-GLD-04 | CF-GLD-04 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-04 |
| GOV-GLD-005 | BO-02 | CAP-GLD-07 | CF-GLD-06 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-05 |
| GOV-GLD-006 | BO-02 | CAP-SLV-07 | CF-GLD-07 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-06 |
| GOV-GLD-007 | BO-03 | CAP-GLD-06 | CF-GLD-05 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-07 |
| GOV-GLD-008 | BO-03 | CAP-SLV-06 | CF-SLV-08 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-08 |
| GOV-GLD-009 | BO-03 | CAP-GLD-05 | CF-GLD-01 | TB-03 | Data Quality Evidence; Lineage Evidence; Authorization Evidence | AC-GLD-09 |
| GOV-SEM-001 | BO-03 | CAP-SEM-01; CAP-SEM-04 | CF-SEM-01; CF-SEM-03 | TB-04 | Semantic Evidence; Lineage Evidence; Authorization Evidence | AC-SEM-01 |
| GOV-SEM-002 | BO-03 | CAP-SEM-02 | CF-SEM-02 | TB-04 | Semantic Evidence; Lineage Evidence; Authorization Evidence | AC-SEM-02 |
| GOV-SEM-003 | BO-03 | CAP-SEM-03 | CF-SEM-02 | TB-04 | Semantic Evidence; Lineage Evidence; Authorization Evidence | AC-SEM-03 |
| GOV-SEM-004 | BO-03 | CAP-SEM-03 | CF-SEM-02 | TB-04 | Semantic Evidence; Lineage Evidence; Authorization Evidence | AC-SEM-04 |
| GOV-SEM-005 | BO-03 | CAP-SEM-05 | CF-SEM-04 | TB-04 | Semantic Evidence; Lineage Evidence; Authorization Evidence | AC-SEM-05 |
| GOV-SEM-006 | BO-02 | CAP-SEM-06 | CF-SEM-05 | TB-04 | Semantic Evidence; Lineage Evidence; Authorization Evidence | AC-SEM-06 |
| GOV-SEM-007 | BO-03 | CAP-SEM-07 | CF-SEM-06 | TB-04 | Semantic Evidence; Lineage Evidence; Authorization Evidence | AC-SEM-07 |
| GOV-KNW-001 | BO-04 | CAP-KNW-01 | CF-KNW-01 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-01 |
| GOV-KNW-002 | BO-04 | CAP-KNW-02 | CF-KNW-01 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-02 |
| GOV-KNW-003 | BO-02 | CAP-KNW-03 | CF-KNW-02 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-03 |
| GOV-KNW-004 | BO-04 | CAP-KNW-04 | CF-KNW-03 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-04 |
| GOV-KNW-005 | BO-04 | CAP-KNW-05 | CF-KNW-05 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-05 |
| GOV-KNW-006 | BO-04 | CAP-KNW-07 | CF-KNW-05 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-06 |
| GOV-KNW-007 | BO-04 | CAP-KNW-07 | CF-KNW-05 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-07 |
| GOV-KNW-008 | BO-04 | CAP-KNW-06 | CF-KNW-04 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-08 |
| GOV-KNW-009 | BO-04 | CAP-KNW-08 | CF-KNW-06 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-09 |
| GOV-KNW-010 | BO-02 | CAP-KNW-09 | CF-KNW-07 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-10 |
| GOV-KNW-011 | BO-04 | CAP-KNW-10 | CF-KNW-08 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-11 |
| GOV-KNW-012 | BO-04 | CAP-KNW-07 | CF-KNW-05 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-12 |
| GOV-KNW-013 | BO-04 | CAP-KNW-11 | CF-KNW-09 | TB-05 | Knowledge Evidence; Policy Evidence; Authorization Evidence | AC-KNW-13 |
| GOV-AI-001 | BO-05 | CAP-AI-01 | CF-AI-01 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-01 |
| GOV-AI-002 | BO-05 | CAP-AI-02 | CF-AI-03 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-02 |
| GOV-AI-003 | BO-05 | CAP-AI-02 | CF-AI-02 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-03 |
| GOV-AI-004 | BO-05 | CAP-AI-03 | CF-AI-04 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-04 |
| GOV-AI-005 | BO-05 | CAP-AI-04 | CF-AI-05 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-05 |
| GOV-AI-006 | BO-05 | CAP-AI-05 | CF-AI-01 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-06 |
| GOV-AI-007 | BO-05 | CAP-AI-06 | CF-AI-06 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-07 |
| GOV-AI-008 | BO-05 | CAP-AI-07 | CF-AI-02 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-08 |
| GOV-AI-009 | BO-05 | CAP-AI-08 | CF-AI-07 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-09 |
| GOV-AI-010 | BO-05 | CAP-AI-09 | CF-AI-08 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-10 |
| GOV-AI-011 | BO-05 | CAP-AI-10 | CF-AI-10 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-11 |
| GOV-AI-012 | BO-05 | CAP-AI-11 | CF-AI-09 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-12 |
| GOV-AI-013 | BO-05 | CAP-AUD-04 | CF-AUD-04 | TB-06 | AI Evidence; Evaluation Evidence; Policy Evidence | AC-AI-13 |
| GOV-AGT-001 | BO-06 | CAP-AGT-01 | CF-AGT-01 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-01 |
| GOV-AGT-002 | BO-06 | CAP-AGT-03 | CF-AGT-01 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-02 |
| GOV-AGT-003 | BO-06 | CAP-AGT-02 | CF-AGT-02 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-03 |
| GOV-AGT-004 | BO-06 | CAP-AGT-04 | CF-AGT-03 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-04 |
| GOV-AGT-005 | BO-06 | CAP-AGT-05 | CF-AGT-04 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-05 |
| GOV-AGT-006 | BO-06 | CAP-AGT-06 | CF-AGT-04 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-06 |
| GOV-AGT-007 | BO-09 | CAP-AGT-07 | CF-AGT-05 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-07 |
| GOV-AGT-008 | BO-06 | CAP-AGT-11 | CF-AGT-09 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-08 |
| GOV-AGT-009 | BO-09 | CAP-AGT-08 | CF-AGT-06 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-09 |
| GOV-AGT-010 | BO-06 | CAP-AGT-10 | CF-AGT-08 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-10 |
| GOV-AGT-011 | BO-09 | CAP-AGT-09 | CF-AGT-07 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-11 |
| GOV-AGT-012 | BO-06 | CAP-AGT-08 | CF-AGT-06 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-12 |
| GOV-AGT-013 | BO-06 | CAP-AGT-11 | CF-AGT-09 | TB-07; TB-08 | Agent Evidence; Tool Evidence; Human Decision Evidence | AC-AGT-13 |
| GOV-INP-001 | BO-07 | CAP-INP-01 | CF-INP-01 | TB-06 | Authorization Evidence; AI Evidence; Audit Evidence | AC-INP-01 |
| GOV-INP-002 | BO-07 | CAP-INP-03 | CF-INP-03 | TB-06 | Authorization Evidence; AI Evidence; Audit Evidence | AC-INP-02 |
| GOV-INP-003 | BO-07 | CAP-INP-04 | CF-INP-04 | TB-06 | Authorization Evidence; AI Evidence; Audit Evidence | AC-INP-03 |
| GOV-INP-004 | BO-07 | CAP-INP-02 | CF-INP-02 | TB-06 | Authorization Evidence; AI Evidence; Audit Evidence | AC-INP-04 |
| GOV-INP-005 | BO-07 | CAP-INP-05 | CF-INP-05 | TB-06 | Authorization Evidence; AI Evidence; Audit Evidence | AC-INP-05 |
| GOV-INP-006 | BO-07 | CAP-INP-06 | CF-INP-06 | TB-06 | Authorization Evidence; AI Evidence; Audit Evidence | AC-INP-06 |
| GOV-OUT-001 | BO-02 | CAP-OUT-01 | CF-OUT-01 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-01 |
| GOV-OUT-002 | BO-02 | CAP-OUT-02 | CF-OUT-02 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-02 |
| GOV-OUT-003 | BO-02 | CAP-OUT-03 | CF-OUT-03 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-03 |
| GOV-OUT-004 | BO-08 | CAP-OUT-04 | CF-OUT-04 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-04 |
| GOV-OUT-005 | BO-08 | CAP-OUT-05 | CF-OUT-05 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-05 |
| GOV-OUT-006 | BO-08 | CAP-OUT-06 | CF-OUT-06 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-06 |
| GOV-OUT-007 | BO-08 | CAP-OUT-07 | CF-OUT-07 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-07 |
| GOV-OUT-008 | BO-08 | CAP-OUT-06 | CF-OUT-06 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-08 |
| GOV-OUT-009 | BO-08 | CAP-OUT-08 | CF-OUT-08 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-09 |
| GOV-OUT-010 | BO-08 | CAP-OUT-09 | CF-OUT-09 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-10 |
| GOV-OUT-011 | BO-08 | CAP-OUT-09 | CF-OUT-09 | TB-09 | Output Evidence; Authorization Evidence; Evaluation Evidence | AC-OUT-11 |
| GOV-AUD-001 | BO-10 | CAP-AUD-01 | CF-AUD-01 | TB-10 | Audit Evidence | AC-AUD-01 |
| GOV-AUD-002 | BO-09 | CAP-AUD-02 | CF-AUD-02 | TB-10 | Audit Evidence | AC-AUD-02 |
| GOV-AUD-003 | BO-10 | CAP-AUD-02 | CF-AUD-02 | TB-10 | Audit Evidence | AC-AUD-03 |
| GOV-AUD-004 | BO-10 | CAP-AUD-03 | CF-AUD-03 | TB-10 | Audit Evidence | AC-AUD-04 |
| GOV-AUD-005 | BO-10 | CAP-AUD-03 | CF-AUD-03 | TB-10 | Audit Evidence | AC-AUD-05 |
| GOV-AUD-006 | BO-10 | CAP-AUD-03 | CF-AUD-03 | TB-10 | Audit Evidence | AC-AUD-06 |
| GOV-AUD-007 | BO-10 | CAP-AUD-03 | CF-AUD-03 | TB-10 | Audit Evidence | AC-AUD-07 |
| GOV-AUD-008 | BO-10 | CAP-AUD-03 | CF-AUD-03 | TB-10 | Audit Evidence | AC-AUD-08 |
| GOV-AUD-009 | BO-10 | CAP-KNW-10 | CF-KNW-08 | TB-10 | Audit Evidence | AC-AUD-09 |
| GOV-AUD-010 | BO-10 | CAP-KNW-05 | CF-KNW-05 | TB-10 | Audit Evidence | AC-AUD-10 |
| GOV-AUD-011 | BO-10 | CAP-AI-03 | CF-AI-04 | TB-10 | Audit Evidence | AC-AUD-11 |
| GOV-AUD-012 | BO-10 | CAP-AI-02 | CF-AI-03 | TB-10 | Audit Evidence | AC-AUD-12 |
| GOV-AUD-013 | BO-10 | CAP-AGT-01 | CF-AGT-01 | TB-10 | Audit Evidence | AC-AUD-13 |
| GOV-AUD-014 | BO-10 | CAP-AUD-05 | CF-AUD-05 | TB-10 | Audit Evidence | AC-AUD-14 |
| GOV-AUD-015 | BO-10 | CAP-AUD-02 | CF-AUD-02 | TB-10 | Audit Evidence | AC-AUD-15 |
| GOV-AUD-016 | BO-10 | CAP-AUD-02 | CF-AUD-02 | TB-10 | Audit Evidence | AC-AUD-16 |
| GOV-AUD-017 | BO-10 | CAP-AUD-09 | CF-AUD-07 | TB-10 | Audit Evidence | AC-AUD-17 |
| GOV-AUD-018 | BO-09 | CAP-AUD-07; CAP-AUD-06 | CF-AGT-08; CF-AUD-06 | TB-10 | Audit Evidence | AC-AUD-18 |
| GOV-AUD-019 | BO-10 | CAP-AUD-08; CAP-AUD-10 | CF-AUD-08; CF-AUD-09 | TB-10 | Audit Evidence | AC-AUD-19 |
| GOV-AUD-020 | BO-10 | CAP-AUD-01; CAP-AUD-11 | CF-AUD-01; CF-AUD-10 | TB-10 | Audit Evidence | AC-AUD-20 |

## 9. Coverage Summary

### Requirements by domain

| Domain | Requirements |
| --- | ---: |
| BRZ | 11 |
| SLV | 12 |
| GLD | 9 |
| SEM | 7 |
| KNW | 13 |
| AI | 13 |
| AGT | 13 |
| INP | 6 |
| OUT | 11 |
| AUD | 20 |

### Requirements by business objective

| Business Objective | Directly mapped requirements |
| --- | ---: |
| BO-01 | 7 |
| BO-02 | 15 |
| BO-03 | 21 |
| BO-04 | 11 |
| BO-05 | 13 |
| BO-06 | 10 |
| BO-07 | 6 |
| BO-08 | 8 |
| BO-09 | 5 |
| BO-10 | 19 |

BO-02 and BO-09 remain cross-cutting and also have explicit row-level mappings.

### Requirements by trust boundary

| Trust Boundary | Requirements |
| --- | ---: |
| TB-01 | 11 |
| TB-02 | 12 |
| TB-03 | 9 |
| TB-04 | 7 |
| TB-05 | 13 |
| TB-06 | 19 |
| TB-07 | 13 |
| TB-08 | 13 |
| TB-09 | 11 |
| TB-10 | 20 |

### Requirements by evidence category

| Evidence Category | Requirements |
| --- | ---: |
| Source Evidence | 11 |
| Data Quality Evidence | 21 |
| Classification Evidence | 11 |
| Authorization Evidence | 46 |
| Lineage Evidence | 28 |
| Policy Evidence | 26 |
| Semantic Evidence | 7 |
| Knowledge Evidence | 13 |
| AI Evidence | 19 |
| Agent Evidence | 13 |
| Tool Evidence | 13 |
| Human Decision Evidence | 13 |
| Output Evidence | 11 |
| Evaluation Evidence | 24 |
| Audit Evidence | 37 |

## 10. Traceability Quality Rules

- Every governance requirement maps to at least one capability, control family, relevant trust boundary, evidence category, and acceptance criterion.
- Mappings must remain semantically defensible.
- Downstream implementation may refine mappings but must not silently remove approved traceability.
- Any material future traceability change must be reviewed.
