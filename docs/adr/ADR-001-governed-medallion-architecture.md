# ADR-001 — Governed Medallion Architecture

## Status

**Accepted**

## Context

Trusted Banking Operations AI requires structured evidence that is traceable, quality-controlled, minimized, and protected before semantic, AI, or Agent use. The approved lifecycle and TB-01 through TB-04 establish distinct governance decisions from source ingestion through semantic consumption.

## Decision

Use **Source → Bronze → Silver → Gold** as the governed structured-data foundation. **Governance begins at Bronze.**

- **Bronze** preserves a raw or equivalently protected representation, provenance, ingestion metadata, sensitive-data discovery, classification, restricted access, and auditability.
- **Silver** performs schema and data-quality validation, standardization, duplicate handling, quarantine, protection, minimization, and transformation lineage.
- **Gold** exposes certified business-ready data, governed definitions and metrics, stewardship, minimized sensitive information, and least-privilege consumption.

Sensitive attributes do not propagate automatically. AI cannot bypass Silver quality and minimization. **Higher layers cannot weaken lower-layer governance.**

## Rationale

Distinct layers make provenance, quality disposition, minimization, certification, and fitness for use observable and testable while preserving a controlled path from source evidence to business consumption.

## Alternatives Considered

- **Direct source-to-Gold:** rejected because it collapses raw provenance, validation, quarantine, and certification decisions.
- **Two-layer raw/curated architecture:** rejected because it obscures the trusted transformation and remediation boundary.
- **Governance only at consumption:** rejected because sensitive or invalid data would remain uncontrolled upstream.

## Consequences

### Positive Consequences

Clear accountability, reusable trusted data, explicit quarantine, lineage continuity, and demonstrable control evidence.

### Trade-offs / Costs

Additional storage, transformations, metadata, certification, and operational stewardship.

### Risks

Layers could become unnecessary copies or ceremonial gates unless purpose, quality, minimization, and evidence are enforced.

## Governance Impact

Supports Bronze, Silver, Gold, and Semantic governance capabilities; TB-01 through TB-04; and `AC-BRZ-*`, `AC-SLV-*`, `AC-GLD-*`, `AC-SEM-*`, and relevant `AC-E2E-*` proofs.

## Implementation Implications

Later designs must preserve layer-specific responsibilities, quarantine, lineage, certification, inherited authorization, and non-propagation of unnecessary sensitive attributes. Physical names and transformation mechanisms remain deferred.

## Evidence & Acceptance Impact

Evidence must connect source/run identity, Bronze ingestion, Silver validation and disposition, Gold certification, semantic use, and applicable authorization decisions.

## Revisit Triggers

Revisit if Snowflake platform patterns materially change, an approved source cannot support provenance, or evidence shows the layers cannot meet required isolation, lineage, or service objectives.

## Related Artifacts

- `docs/governance/end-to-end-governance-requirements.md`
- `docs/governance/governance-trust-boundaries.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`
- `docs/demo/lighthouse-acceptance-criteria.md`

Relationship: ADR-001 supplies governed structured data to ADR-004 and, through ADR-005, to downstream AI governance.
