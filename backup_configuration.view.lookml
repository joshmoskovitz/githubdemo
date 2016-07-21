- view: backup_configuration
  sql_table_name: BACKUP_CONFIGURATION
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: custom_s3_bucket
    sql: ${TABLE}.CUSTOM_S3_BUCKET

  - dimension: custom_s3_bucket_region
    sql: ${TABLE}.CUSTOM_S3_BUCKET_REGION

  - dimension: encrypted_custom_s3_key
    sql: ${TABLE}.ENCRYPTED_CUSTOM_S3_KEY

  - dimension: encrypted_custom_s3_secret
    sql: ${TABLE}.ENCRYPTED_CUSTOM_S3_SECRET

  - dimension: type
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id]

