-- G2.3 — governed Bronze schema contract
-- Bronze preserves the approved source representation and deliberate defects.
-- Validation, normalization, derivation, quarantine, and remediation belong to Silver.

USE ROLE SYSADMIN;
USE DATABASE TRUSTED_AI_GOVERNANCE;

CREATE SCHEMA IF NOT EXISTS BRONZE
  COMMENT = 'Governed raw source-preserving data with provenance, run, file, row, and synthetic context';

ALTER SCHEMA BRONZE SET COMMENT =
  'Governance begins at Bronze: restricted raw values plus staged-file and ingestion correlation metadata';
