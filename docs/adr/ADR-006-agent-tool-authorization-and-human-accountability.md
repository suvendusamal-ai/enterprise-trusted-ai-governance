# ADR-006 — Agent Tool Authorization and Human Accountability

## Status

**Accepted**

## Context

The Trusted Banking Operations Agent can orchestrate governed data and knowledge and propose actions, but it must not become an unrestricted super-user or autonomous banking decision-maker.

## Decision

Use controlled Cortex Agent orchestration with four logical tool categories: Structured Operations Intelligence, Governed Policy Knowledge, Governance Control Check, and Controlled Action/Escalation.

Agent authority cannot exceed authenticated user and delegated authority. Every material action is re-authorized at execution time; denials produce evidence; material actions require accountable human approval where policy or risk requires it; and approval remains separate from execution.

**Recommend ≠ Approve ≠ Execute**

## Rationale

Separate orchestration, authorization, approval, and execution constrain side effects while retaining useful AI-assisted investigation and escalation.

## Alternatives Considered

- **Unrestricted tool execution:** rejected because planning cannot grant authority.
- **Approval inferred from recommendation:** rejected because recommendation carries no approval authority.
- **Autonomous financial actions:** rejected as outside lighthouse scope and human-accountability principles.
- **Blanket service-account authority:** rejected because it bypasses user context, least privilege, and delegation.

## Consequences

### Positive Consequences

Least-privilege tools, clear accountability, safe denial, separation of duties, and reconstructable decisions.

### Trade-offs / Costs

Tool registries, policy decisions, approval integration, denial handling, and trace capture add complexity.

### Risks

Identity or delegation loss, stale tool permissions, approval bypass, or confused-deputy behavior could create unauthorized effects.

## Governance Impact

Supports TB-07 and TB-08, Agent governance, `AC-AGT-*`, human-decision evidence, unauthorized-action prevention, and human-accountability proofs.

## Implementation Implications

Later work must bind Agent/version and user context, expose only approved tools, authorize safe parameters and actions at execution, enforce approval where required, prevent financial execution, and capture denials and outcomes. No Agent or tool configuration is created here.

## Evidence & Acceptance Impact

Evidence must link user, Agent/version, purpose, delegation, plan, tool/action request, safe parameters, authorization, denial or approval, human rationale, result, and trace ID.

## Revisit Triggers

Revisit if action scope changes, policy materiality changes, native authorization/approval capabilities mature, or control testing exposes delegation or separation gaps.

## Related Artifacts

- `docs/business-case/personas-and-responsibilities.md`
- `docs/business-case/payment-exception-investigation-process.md`
- `docs/governance/governance-trust-boundaries.md`
- `docs/architecture/l1/enterprise-trusted-ai-l1-logical-architecture.md`

Relationship: ADR-006 consumes admitted context from ADR-005 and sends every recommendation through ADR-007.
