-- G2.3 — Snowflake environment foundation
-- Prerequisite: execute as a deployment administrator with CREATE DATABASE and
-- CREATE SCHEMA privileges. Do not grant administrative system roles to project roles.

USE ROLE SYSADMIN;

CREATE DATABASE IF NOT EXISTS TRUSTED_AI_GOVERNANCE
  COMMENT = 'Trusted Banking Operations AI lighthouse governed data and evidence container';

CREATE SCHEMA IF NOT EXISTS TRUSTED_AI_GOVERNANCE.PLATFORM
  COMMENT = 'Governed landing objects and platform utilities for approved synthetic sources';

CREATE SCHEMA IF NOT EXISTS TRUSTED_AI_GOVERNANCE.BRONZE
  COMMENT = 'Governed raw source-preserving data; governance begins at Bronze';

CREATE SCHEMA IF NOT EXISTS TRUSTED_AI_GOVERNANCE.GOVERNANCE
  COMMENT = 'Project governance metadata required to complement Snowflake-native controls';

CREATE SCHEMA IF NOT EXISTS TRUSTED_AI_GOVERNANCE.AUDIT
  COMMENT = 'Protected Bronze ingestion run and file evidence';

-- G2.3 intentionally creates no SILVER, GOLD, SEMANTIC, KNOWLEDGE, AI,
-- AGENT, or OUTPUT schema.
