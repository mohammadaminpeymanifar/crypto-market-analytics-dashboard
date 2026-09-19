Issue:
BULK INSERT imported carriage return characters (CHAR(13))
at the end of numeric fields.

Solution:
Used REPLACE(column_name, CHAR(13), '')
before TRY_CONVERT during Raw-to-Staging ETL.