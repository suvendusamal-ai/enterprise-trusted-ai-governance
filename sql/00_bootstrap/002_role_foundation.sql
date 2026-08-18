-- G2.3 — least-privilege project role foundation
-- Prerequisite: execute as USERADMIN, or a delegated role with CREATE ROLE and
-- role-grant authority. User assignment is intentionally deployment-specific.

USE ROLE USERADMIN;

CREATE ROLE IF NOT EXISTS TRUSTED_AI_TAG_ADMIN
  COMMENT = 'Owns and administers project governance tags; no implicit business-data access';
CREATE ROLE IF NOT EXISTS TRUSTED_AI_DATA_ENGINEER
  COMMENT = 'Operates approved governed Bronze ingestion and its evidence';
CREATE ROLE IF NOT EXISTS TRUSTED_AI_DATA_STEWARD
  COMMENT = 'Inspects governance metadata, classification evidence, and stewardship outcomes';
CREATE ROLE IF NOT EXISTS TRUSTED_AI_BRONZE_READER
  COMMENT = 'Restricted read access to approved Bronze source-preserving data';
CREATE ROLE IF NOT EXISTS TRUSTED_AI_AUDITOR
  COMMENT = 'Read-oriented access to approved ingestion and governance evidence';

-- A data engineer inherits the same deliberate Bronze read surface used for
-- validation. Other assurance/governance roles remain independent.
GRANT ROLE TRUSTED_AI_BRONZE_READER TO ROLE TRUSTED_AI_DATA_ENGINEER;

-- SYSADMIN is the deployment aggregation point. No project role receives
-- ACCOUNTADMIN or SECURITYADMIN, and no role is assigned to a named user.
GRANT ROLE TRUSTED_AI_TAG_ADMIN TO ROLE SYSADMIN;
GRANT ROLE TRUSTED_AI_DATA_ENGINEER TO ROLE SYSADMIN;
GRANT ROLE TRUSTED_AI_DATA_STEWARD TO ROLE SYSADMIN;
GRANT ROLE TRUSTED_AI_AUDITOR TO ROLE SYSADMIN;
