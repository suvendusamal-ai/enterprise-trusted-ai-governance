# ADR-003 — Governed Knowledge Retrieval and Cortex Search Authorization

## Status

**Accepted**

## Context

Policy and procedure evidence must remain authoritative, current, purpose-appropriate, and traceable. Cortex Search is an owner-rights retrieval service and is not treated as automatically inheriting each requester's access to indexed source rows.

## Decision

Treat Cortex Search as an explicitly governed retrieval boundary. Preserve **TB-05 — Enterprise Knowledge → Governed Knowledge Retrieval** separately from **TB-06 — Retrieved Evidence → AI Context Admission**.

- Documents pass governed landing and receive persistent project-governed identity/version metadata.
- Authority, approval, effective/expiry status, AI eligibility, classification, permitted purpose, and authorization scope determine retrieval eligibility.
- `AI_PARSE_DOCUMENT` operates on governed landed content, not registry metadata; parsed content remains linked by document identity/version.
- Search-service ownership is deliberately least-privilege, and corpora/services may be segmented by sensitivity or purpose.
- Search filters contribute to enforcement but are not the whole authorization model.
- TB-05 evaluates requester and purpose before retrieval; TB-06 re-evaluates returned evidence for the current invocation.

**Retrieved ≠ Admitted to AI Context**

## Rationale

Separate boundaries prevent service-owner access, search indexing, or prior retrieval eligibility from becoming implicit AI authorization.

## Alternatives Considered

- **One unrestricted enterprise index:** rejected because it collapses sensitivity and purpose boundaries.
- **Source-table RBAC only:** rejected because it does not by itself guarantee requester-equivalent Cortex Search results.
- **All retrieved content directly to AI:** rejected because it bypasses invocation-specific minimization and authorization.

## Consequences

### Positive Consequences

Explicit corpus scope, current-document controls, citation traceability, instruction isolation, and defense in depth.

### Trade-offs / Costs

More metadata stewardship, retrieval-policy design, service ownership, and potentially multiple corpora/services.

### Risks

Incorrect metadata, ownership, filtering, or corpus boundaries could expose ineligible evidence; excessive segmentation could increase operations cost.

## Governance Impact

Supports knowledge and input governance at TB-05 and TB-06, especially `AC-KNW-*`, relevant `AC-INP-*`, `AC-AI-*`, and end-to-end evidence proofs.

## Implementation Implications

Later design must preserve governed landing, registry/content linkage, least-privilege ownership, corpus decisions, explicit requester/purpose authorization, citations, and a separate TB-06 admission decision. No service count or physical role is fixed here.

## Evidence & Acceptance Impact

Evidence must record document/version, lifecycle and authority state, eligibility, requester/purpose, corpus/service, retrieval decision, passages/citations, and TB-06 admission disposition.

## Revisit Triggers

Revisit if Cortex Search security semantics change, a stable native requester-context control satisfies the contract, or corpus segmentation proves insufficient or disproportionate.

## Related Artifacts

- `docs/governance/governance-trust-boundaries.md`
- `docs/governance/end-to-end-governance-requirements.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`
- `docs/demo/lighthouse-acceptance-criteria.md`

Relationship: ADR-003 supplies governed knowledge to ADR-005; ADR-002 governs the native/project responsibility split.
