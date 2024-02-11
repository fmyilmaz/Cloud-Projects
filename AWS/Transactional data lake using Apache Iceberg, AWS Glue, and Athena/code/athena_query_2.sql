CREATE TABLE users
(
  userid int,
  username string,
  credit double
)
LOCATION 's3://ccl-lab-iceberg-bucket/userdata/'
TBLPROPERTIES ('table_type'='ICEBERG', 'format' = 'parquet');

INSERT INTO users VALUES (1, 'user1', 100.0);