# Synthetic Banking Data Generation Validation

> SYNTHETIC DEMONSTRATION CONTENT — contains no real customer or banking information.

## Deterministic Configuration

- Seed: `20260315`
- Synthetic reference date: `2026-03-15`
- Investigation week: `2026-03-09` through `2026-03-15`
- History days: `120`

## Generated Counts

- `customer`: 1000
- `account`: 1500
- `payment`: 25000
- `payment_exception`: 2500
- `sla_event`: 2500
- `operations_team`: 5
- `operations_user`: 25
- `reference_exception_reason`: 12
- `reference_payment_threshold`: 4
- `governance_reference`: 24
- Knowledge documents: 8
- Manifest rows: 24

## High-Value Investigation Spike

| Period | Dates | High-value payments | High-value exceptions | Exception rate |
| --- | --- | ---: | ---: | ---: |
| Investigation Week | 2026-03-09 to 2026-03-15 | 600 | 152 | 25.33% |
| Previous Week | 2026-03-02 to 2026-03-08 | 620 | 79 | 12.74% |
| Trailing Four Weeks | 2026-02-09 to 2026-03-08 | 2473 | 292 | 11.81% |

Trailing four-week weekly averages:

- High-value payments: 618.25
- High-value exceptions: 73.00
- Aggregate baseline exception rate: 11.81%

## Investigation-Week Operational Signature

Among 152 investigation-week high-value exceptions:

- Dominant processing system: `SYN_PAY_SYS_2` (66)
- Dominant payment channel: `ONLINE` (51)
- Top exception reason/category: `R002` / `Liquidity` (63)

## Validation Results

- Normal Relationships: **PASS**
- Exception Reason Consistency: **PASS**
- High Value Derivation: **PASS**
- Sla Consistency: **PASS**
- Team Manager Consistency: **PASS**
- Resolution Consistency: **PASS**
- Temporal Consistency: **PASS**
- Document Rows: **PASS**
- Document Disclaimers: **PASS**
- Expired Policy: **PASS**
- Supersession: **PASS**
- Malicious Non Authoritative: **PASS**
- Investigation Rate In Range: **PASS**
- Previous Rate In Range: **PASS**
- Trailing Rate In Range: **PASS**
- Spike Measurable: **PASS**
- Signature Concentration: **PASS**

DQ-01 through DQ-08, POS-01 through POS-06, and NEG-01 through NEG-10 are represented in `source/governance_test_manifest.csv`.

Deterministic artifacts contain no generation wall-clock timestamp. `generation-validation.md` is therefore included in reproducibility hashing.

No Bronze, Silver, or Gold datasets and no Snowflake objects were generated.
