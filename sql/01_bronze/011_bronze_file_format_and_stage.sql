-- G2.3 — governed CSV file format and internal landing stage
-- Empty CSV fields become NULL while non-empty text is preserved as VARCHAR.
-- Column-count mismatch is fatal because structural corruption is not a business DQ case.

USE ROLE SYSADMIN;
USE DATABASE TRUSTED_AI_GOVERNANCE;
USE SCHEMA PLATFORM;

CREATE FILE FORMAT IF NOT EXISTS PLATFORM.SYNTHETIC_SOURCE_CSV_FORMAT
  TYPE = CSV
  COMPRESSION = AUTO
  FIELD_DELIMITER = ','
  RECORD_DELIMITER = '\n'
  SKIP_HEADER = 1
  FIELD_OPTIONALLY_ENCLOSED_BY = '"'
  ENCODING = 'UTF8'
  NULL_IF = ('')
  EMPTY_FIELD_AS_NULL = TRUE
  ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE
  REPLACE_INVALID_CHARACTERS = FALSE
  COMMENT = 'Strict structural parsing for approved UTF-8 synthetic G2.2 source CSVs';

CREATE STAGE IF NOT EXISTS PLATFORM.SOURCE_STAGE
  FILE_FORMAT = PLATFORM.SYNTHETIC_SOURCE_CSV_FORMAT
  DIRECTORY = (ENABLE = TRUE)
  COMMENT = 'Governed internal stage for approved synthetic structured source files only';

-- PUT remains a client-side deployment step documented in the runbook.
