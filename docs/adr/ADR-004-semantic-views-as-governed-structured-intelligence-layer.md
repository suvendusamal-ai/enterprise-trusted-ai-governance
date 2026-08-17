# ADR-004 — Semantic Views as Governed Structured Intelligence Layer

## Status

**Accepted**

## Context

Payment exception, SLA, trend, and customer-operational analysis requires consistent definitions, metrics, relationships, and authorization over certified structured data.

## Decision

Use **Snowflake Semantic Views** as the governed structured business-intelligence layer. Semantic definitions originate from governed Gold sources; terms, dimensions, measures, calculations, and metrics require ownership and approval.

Semantic Views are independently governed Snowflake schema-level objects with their own privileges. Access must be deliberately granted according to approved persona and purpose. Applicable masking policies and row access policies on underlying data remain enforced and must not be weakened, but underlying base-table RBAC alone is not assumed to define or automatically reproduce the intended Semantic View authorization model.

**Governed source ≠ automatically governed semantic consumption.**

**Semantic access must be explicitly authorized while preserving applicable underlying protection policies.**

Structured analytical AI uses governed semantics rather than arbitrary SQL over uncontrolled data. Cortex Analyst and Cortex Agent structured-data tool paths may consume the approved Semantic Views.

## Rationale

A governed semantic layer centralizes business meaning, improves analytical consistency, and makes structured results traceable to definitions, versions, and certified data.

## Alternatives Considered

- **Direct LLM-generated SQL against arbitrary tables:** rejected because it expands access and weakens certified-source control.
- **Semantic logic only in prompts:** rejected because definitions become difficult to own, version, test, and reuse.
- **Metric duplication per Agent/tool:** rejected because calculations and interpretations would diverge.

## Consequences

### Positive Consequences

Consistent metrics, reusable definitions, governed source use, explicit semantic authorization, preserved underlying protection, and result lineage.

### Trade-offs / Costs

Semantic modeling, stewardship, versioning, approval, and regression testing are required.

### Risks

Incomplete semantic coverage may drive unsafe fallback patterns; incorrect definitions could consistently produce misleading results; overly broad Semantic View privileges could expose governed business information even when definitions are correct.

## Governance Impact

Supports TB-04 and TB-06, Semantic and Gold governance, `AC-SEM-*`, relevant `AC-GLD-*`, `AC-AI-*`, and grounded-response proofs.

## Implementation Implications

Later work must define approved Gold sources, semantic ownership, versions, privileges, measures, dimensions, relationships, calculations, and trace evidence. It must validate the privileges required for both direct Semantic View consumption and Cortex Analyst/Cortex Agent execution paths while preserving applicable masking and row access policies. No physical roles, grants, or Semantic Views are created by this ADR.

## Evidence & Acceptance Impact

Evidence must connect request, Semantic View identity/version, approved definitions, access decision, generated analytical result, and contributing Gold lineage.

## Revisit Triggers

Revisit if Semantic Views cannot meet required semantics or authorization, a replacement Snowflake capability supersedes them, or approved cross-platform requirements mandate another abstraction.

## Related Artifacts

- `docs/governance/end-to-end-governance-requirements.md`
- `docs/governance/governance-trust-boundaries.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`
- `docs/demo/lighthouse-acceptance-criteria.md`

Relationship: ADR-004 consumes ADR-001 Gold data and supplies structured evidence to ADR-005.
