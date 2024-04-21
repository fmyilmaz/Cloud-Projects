CREATE TABLE
[db_name]table_name
(
  column1_name column1_type,
  column2_name column2_type,
  ...
)
[PARTITIONED BY (column_name column_type, ...)]
Location 's3://bucket_name/path_to_table/'
TBLPROPERTIES ('table_type'='ICEBERG' [, 'property_name'='property_value', ...]);
```