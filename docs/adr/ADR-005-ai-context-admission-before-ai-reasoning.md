# ADR-005 — AI Context Admission Before AI Reasoning

## Status

**Accepted**

## Context

Data or knowledge may be authorized for storage, semantic query, or retrieval yet still be excessive, ineligible, or inappropriate for a particular AI invocation. TB-06 is an invocation-specific authorization and minimization boundary.

## Decision

Introduce mandatory logical **AI Context Admission** at TB-06 before governed evidence enters AI reasoning. It evaluates user identity, persona, business purpose, structured-data authorization, knowledge authorization, current document eligibility, minimization, necessity, prompt/system constraints, and policy context.

**Authorized somewhere upstream ≠ authorized for this AI invocation.**

Only accepted and minimized context reaches AI reasoning. The admission engine is not implemented here.

## Rationale

Invocation context changes the purpose, recipient, evidence combination, and disclosure risk. A distinct gate prevents upstream access from becoming universal AI-use authority.

## Alternatives Considered

- **Pass all semantic/retrieved evidence to the model:** rejected because it violates necessity and purpose limitation.
- **Rely only on Agent tool authorization:** rejected because tool scope does not decide AI-context eligibility.
- **Rely only on source access controls:** rejected because upstream authorization is not invocation-specific.

## Consequences

### Positive Consequences

Purpose-bound evidence, reduced sensitive exposure, explicit knowledge eligibility, and auditable AI-context decisions.

### Trade-offs / Costs

Admission policy, metadata, decision orchestration, and evidence correlation add latency and design effort.

### Risks

Overly permissive rules can leak context; overly restrictive rules can impair usefulness or create unexplained abstentions.

## Governance Impact

Directly supports TB-06, AI/Input/Knowledge governance, relevant `AC-KNW-*`, `AC-INP-*`, `AC-AI-*`, and `AC-E2E-*` criteria.

## Implementation Implications

Later design must accept verified identity/purpose and evidence metadata, apply deterministic admission decisions, minimize safely, preserve prompt/model constraints, and emit correlation-ready evidence.

## Evidence & Acceptance Impact

Evidence must identify the candidate and admitted evidence sets, user/persona/purpose, policy and eligibility inputs, minimization, decision, prompt/model versions, timestamp, and correlation ID.

## Revisit Triggers

Revisit if upstream controls can verifiably provide equivalent invocation-specific decisions, latency is incompatible with service objectives, or policy/risk scope materially changes.

## Related Artifacts

- `docs/governance/governance-trust-boundaries.md`
- `docs/governance/governance-control-catalog.md`
- `docs/architecture/reference/enterprise-trusted-ai-reference-architecture.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`

Relationship: ADR-005 admits evidence from ADR-003 and ADR-004 before ADR-006 orchestration.
