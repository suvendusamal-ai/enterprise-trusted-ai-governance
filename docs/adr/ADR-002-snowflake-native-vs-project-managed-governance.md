# ADR-002 — Snowflake-Native vs Project-Managed Governance

## Status

**Accepted**

## Context

Snowflake provides material governance and AI capabilities, but the approved contract also requires business purpose, authority, approval, lifecycle, delegated-authority, and cross-layer correlation semantics that are not assumed to be complete in native metadata.

## Decision

Use a hybrid governance model.

Use Snowflake-native capabilities where suitable, including RBAC, classification, tags, masking and row access policies, Access History/lineage, Data Quality Monitoring/DMFs, Semantic Views, Cortex Search, Cortex Agents, AI Guardrails, and observability.

Use project-managed logical governance where additional context is required, including document authority/lifecycle/AI eligibility, prompt and AI-purpose registries, Agent/tool authorization and delegation metadata, human-approval and output-disposition evidence, governance-control registry, and end-to-end correlation.

**Do not build custom governance where native Snowflake capabilities sufficiently satisfy the approved requirement.**

**Do not assume native platform capabilities automatically satisfy business-governance requirements that require purpose, authority, approval, or cross-layer correlation.**

## Rationale

The hybrid model reuses governed platform primitives while closing explicit business-control and evidence gaps without creating an unnecessary parallel platform.

## Alternatives Considered

- **Snowflake-native only:** rejected because business-purpose and cross-layer evidence obligations may remain unmet.
- **Fully custom framework:** rejected because it duplicates mature native enforcement and evidence capabilities.
- **Mandatory third-party platform:** rejected because no demonstrated gap currently justifies that dependency; no third party is selected.

## Consequences

### Positive Consequences

Lower duplication, stronger platform integration, and explicit ownership of residual governance responsibilities.

### Trade-offs / Costs

Requires a maintained capability-to-requirement mapping and integration between native and project evidence.

### Risks

Native coverage may be overstated, or project extensions may grow into an avoidable custom platform.

## Governance Impact

Spans all approved trust boundaries and acceptance families by defining where enforcement, metadata, and evidence responsibilities reside.

## Implementation Implications

Each later control design must document native coverage, the remaining gap, and any project responsibility. Edition, region, and feature state must be validated at implementation time; preview-only features are not mandatory where stable alternatives exist.

## Evidence & Acceptance Impact

Evidence must identify which native or project control produced each material decision and correlate both sources without unnecessary duplication.

## Revisit Triggers

Revisit when Snowflake capability maturity or contractual requirements change, material control gaps emerge, or a third-party dependency becomes justified through an approved architecture decision.

## Related Artifacts

- `docs/governance/governance-capability-model.md`
- `docs/governance/governance-control-catalog.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`
- `docs/governance/governance-traceability-matrix.md`

Relationship: ADR-002 spans ADR-001 and ADR-003 through ADR-008.
