# ADR-008 — End-to-End Correlation and Audit Evidence

## Status

**Accepted**

## Context

Native Snowflake events and project governance decisions arise across different lifecycle components. Without common correlation, an auditor cannot reliably reconstruct the evidence, decisions, actions, approvals, and output for a material investigation.

## Decision

Use a unified logical correlation model linking Snowflake-native and project-governed evidence across:

**Source → Bronze → Silver → Gold → Semantic/Knowledge → AI → Agent → Tool → Human Decision → Output → Audit**

Correlate trace ID, source/run, lineage, quality, classification, authorization, semantic asset/version, knowledge document/version, retrieval, prompt/version, model/deployment/version, Agent/version, tool call, action authorization, human approval, output disposition, evaluation, and timestamps.

Reuse native evidence wherever available; project evidence closes gaps rather than duplicating everything. Evidence is itself protected and minimized.

Preserve **Requirement → Capability → Control → Execution → Evidence → Test → Audit** and **Business Objective → Governance Requirement → Capability → Control Family → Control → Execution → Evidence → Test → Audit**.

## Rationale

A unified correlation context makes governance verifiable across control planes while retaining native evidence at its authoritative source.

## Alternatives Considered

- **Separate uncorrelated logs:** rejected because temporal proximity is not reliable traceability.
- **Application-only logs:** rejected because they omit authoritative platform enforcement and lineage evidence.
- **Snowflake-native evidence only:** rejected because business approvals and project decisions may be absent.
- **Copy all sensitive data into audit tables:** rejected because it violates minimization and increases exposure.

## Consequences

### Positive Consequences

Reconstructable decisions, evidence continuity, reusable assurance, reduced duplication, and explicit evidence gaps.

### Trade-offs / Costs

Correlation conventions, retention, integrity, access, time alignment, and evidence ownership require design and operations.

### Risks

Missing identifiers, clock inconsistencies, mutable evidence, over-collection, or broken links could undermine assurance.

## Governance Impact

Supports every approved boundary, especially TB-10, all `AC-AUD-*`, `AC-E2E-*`, and domain evidence families without creating new IDs.

## Implementation Implications

Later designs must define correlation propagation, authoritative evidence references, protected project evidence, integrity and retention, safe access, gap detection, and audit reconstruction. No tables or queries are created here.

## Evidence & Acceptance Impact

The model enables source-to-outcome lineage, identity and authorization proof, version reconstruction, denied-action and human-decision evidence, final disposition, and complete end-to-end acceptance demonstrations.

## Revisit Triggers

Revisit if native correlation coverage expands, retention or regulatory obligations change, evidence volume becomes disproportionate, or audit tests reveal incomplete reconstruction.

## Related Artifacts

- `docs/governance/governance-traceability-matrix.md`
- `docs/governance/governance-control-catalog.md`
- `docs/demo/lighthouse-acceptance-criteria.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`

Relationship: ADR-008 closes the lifecycle for ADR-001 through ADR-007; ADR-002 governs its native/project evidence split.
