# Data Zones

The repository reserves the following zones for production-grade synthetic banking data:

- `synthetic/source` — generated source-system banking data
- `synthetic/bronze` — raw/landed representation
- `synthetic/silver` — validated, standardized, quality-controlled, and governed representation
- `synthetic/gold` — curated business-ready datasets
- `synthetic/documents` — synthetic unstructured or semi-structured banking documents used later for knowledge governance

All data must be synthetic. No real customer, account, transaction, employee, regulatory, or confidential banking data may be stored in this repository.
