# Codex Working Contract

## Project mandate

- This repository is a production-grade lighthouse project, not a throwaway demo.
- The business use case is **Trusted Banking Operations AI**.
- Snowflake is the reference implementation platform.
- Keep the conceptual architecture platform-neutral where practical.
- Governance begins at Bronze ingestion and continues through AI Agent output, observability, and audit.
- The governing lifecycle is **Source → Bronze → Silver → Gold → Semantic/Knowledge → AI → Agent → Output → Audit**.

## Safety and governance principles

- Only synthetic banking data may be committed. Never commit real customer data.
- Never commit passwords, tokens, secrets, private keys, credentials, connection strings, or sensitive configuration.
- Sensitive data must not automatically propagate across Bronze, Silver, Gold, semantic, AI, or Agent layers without an approved business need.
- Data minimization and least privilege are mandatory design principles.
- AI and Agent components must inherit enterprise authorization rather than bypass it.
- Final AI output is itself subject to governance.
- Governance controls must eventually be demonstrable through executable evidence and audit artifacts, not documentation alone.

## Working rules

- Work incrementally, one explicitly approved project action at a time.
- Do not implement future phases unless explicitly instructed by the current task.
- Do not move to the next numbered action automatically.
- Preserve repository architecture and naming conventions.
- Before modifying the repository, inspect the existing repository structure and relevant files.
- Preserve existing approved content unless the current action explicitly requires changing it.
- Prefer modular, testable, and auditable implementations.
- Capture material architectural decisions later through ADRs.
- Do not assume knowledge from prior ChatGPT or Codex conversations.
- Repository content and the current action prompt are the authoritative sources of project context.
- If the current action conflicts with an approved repository ADR or architectural rule, stop and report the conflict rather than silently changing the architecture.
