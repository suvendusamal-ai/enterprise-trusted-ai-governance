# ADR-007 — Output Governance Gateway Before Response Release

## Status

**Accepted**

## Context

Even authorized AI reasoning and Agent orchestration can produce sensitive, unsupported, policy-incompatible, or action-seeking content. Release is therefore a distinct governance decision at TB-09.

## Decision

Every user-visible or externally consumable AI/Agent response passes through an explicit **Output Governance Gateway** before release. It evaluates recipient authorization, sensitive-output detection, masking/redaction, policy compliance, groundedness, citations/evidence, unsupported claims, abstention, restricted actions, and final disposition.

Materiality may determine which checks execute, control depth, review level, escalation, and evidence detail, but it never creates a bypass around the gateway.

AI Guardrails may contribute but do not replace the complete gateway. Deterministic project-level checks may be required. No direct AI-to-user or Agent-to-user bypass is permitted.

**The final AI/Agent response is a governed artifact.**

## Rationale

Output-specific controls evaluate the actual response, recipient, evidence, and intended action rather than assuming upstream governance guarantees safe release.

## Alternatives Considered

- **Trust model/Agent output directly:** rejected because generation is not an authorization decision.
- **Check only sensitive prompts:** rejected because benign inputs can still yield sensitive or unsupported output.
- **Use one native guardrail only:** rejected because the governance contract also requires recipient, evidence, action, and disposition controls.

## Consequences

### Positive Consequences

Consistent release control, safe abstention, recipient-aware protection, grounded claims, and auditable dispositions.

### Trade-offs / Costs

Additional evaluation latency, policy maintenance, false-positive management, and response-handling paths.

### Risks

Control gaps may release unsafe content; excessive controls may distort useful answers or obscure evidence.

## Governance Impact

Supports TB-09 and TB-10, Output and AI governance, `AC-OUT-*`, relevant `AC-AI-*`, and controlled-failure and grounded-response proofs.

## Implementation Implications

Later work must route every user-visible or externally consumable response through the gateway, prohibit bypasses, apply only approved outcome semantics, combine native and project controls where required, preserve citations, and bind released output to its disposition and recipient. No gateway is implemented here.

## Evidence & Acceptance Impact

Evidence must retain or securely reference draft/final output, recipient context, sensitivity, grounding and citation results, policies, action handling, disposition, timestamp, and trace ID.

## Revisit Triggers

Revisit if output channels or risk scope change, a platform capability demonstrably satisfies the full contract, or evaluation evidence shows unacceptable control quality or latency.

## Related Artifacts

- `docs/governance/end-to-end-governance-requirements.md`
- `docs/governance/governance-control-catalog.md`
- `docs/architecture/reference/enterprise-trusted-ai-reference-architecture.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`

Relationship: ADR-007 governs ADR-006 recommendations before ADR-008 correlates the released outcome.
