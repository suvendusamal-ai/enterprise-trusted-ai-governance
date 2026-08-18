-- G2.3 — optional Snowflake-native sensitive-data classification at Bronze
--
-- MANDATORY GOVERNANCE BASELINE
-- Project governance tags are established independently by 040/041 and remain
-- the required synchronous Bronze classification evidence.
--
-- OPTIONAL NATIVE CLASSIFICATION — ENTERPRISE EDITION OR HIGHER
-- Execute this entire file only after the runbook capability gate verifies that
-- SNOWFLAKE.DATA_PRIVACY.CLASSIFICATION_PROFILE is available and the optional
-- grants in 042 have been executed. If unavailable, skip this file and record:
-- NATIVE CLASSIFICATION: NOT AVAILABLE IN CURRENT ACCOUNT/EDITION
-- Classification is asynchronous and can begin about one hour after assignment.

USE ROLE TRUSTED_AI_TAG_ADMIN;
USE DATABASE TRUSTED_AI_GOVERNANCE;
USE SCHEMA GOVERNANCE;

CREATE SNOWFLAKE.DATA_PRIVACY.CLASSIFICATION_PROFILE IF NOT EXISTS
  GOVERNANCE.TRUSTED_AI_BRONZE_CLASSIFICATION_PROFILE({
    'minimum_object_age_for_classification_days': 0,
    'maximum_classification_validity_days': 30,
    'auto_tag': false,
    'classify_views': false
  });

ALTER SCHEMA TRUSTED_AI_GOVERNANCE.BRONZE SET CLASSIFICATION_PROFILE =
  'TRUSTED_AI_GOVERNANCE.GOVERNANCE.TRUSTED_AI_BRONZE_CLASSIFICATION_PROFILE';

SELECT TRUSTED_AI_GOVERNANCE.GOVERNANCE.TRUSTED_AI_BRONZE_CLASSIFICATION_PROFILE!DESCRIBE();

-- Re-run these evidence queries after the asynchronous classifier has completed.
-- Zero rows immediately after setup means PENDING/NOT YET OBSERVED, not PASS.
SELECT *
FROM TABLE(TRUSTED_AI_GOVERNANCE.INFORMATION_SCHEMA.TAG_REFERENCES_ALL_COLUMNS(
  'TRUSTED_AI_GOVERNANCE.BRONZE.CUSTOMER_RAW', 'TABLE'
))
WHERE TAG_DATABASE = 'SNOWFLAKE'
  AND TAG_NAME IN ('SEMANTIC_CATEGORY', 'PRIVACY_CATEGORY')
ORDER BY COLUMN_NAME, TAG_NAME;

CALL SYSTEM$GET_CLASSIFICATION_RESULT('TRUSTED_AI_GOVERNANCE.BRONZE.CUSTOMER_RAW');

-- Project-managed tags are deliberately not auto-mapped from native categories.
