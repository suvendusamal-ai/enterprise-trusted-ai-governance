# Synthetic Banking Data

## Purpose

This directory will contain synthetic data for the Trusted Banking Operations AI lighthouse.

## Planned Zones

- `source/`
- `bronze/`
- `silver/`
- `gold/`
- `documents/`

## Planned Source Data

- customer
- account
- payment
- payment_exception
- sla_event
- operations_team
- operations_user
- exception_reason reference
- payment_threshold reference
- governance reference metadata

## Planned Documents

- `POL-001`
- `PROC-001`
- `PROC-002`
- `POL-002`
- `POL-003`
- `GUID-001`
- `POL-OLD-001`
- `DOC-MAL-001`

## Safety Statement

All content must be synthetic. Real banking or customer data and credentials or secrets are prohibited. Generated datasets must be reproducible. Intentionally defective test records must be controlled, traceable, and documented.

## Current Status

**G2.2 — Deterministic synthetic source data and governed knowledge documents generated.**

## Regeneration

From the repository root, use the project-local environment:

```powershell
.\.venv\Scripts\python.exe src\utilities\generate_synthetic_banking_data.py
```

The generator reads `config/synthetic_data_generation.yaml` and replaces only the approved synthetic source, document, manifest, metadata, and validation artifacts. Use the same configuration to reproduce byte-identical outputs.
