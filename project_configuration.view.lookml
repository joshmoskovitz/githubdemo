- view: project_configuration
  sql_table_name: PROJECT_CONFIGURATION
  fields:

  - dimension: project_id
    sql: ${TABLE}.PROJECT_ID

  - dimension: pull_request_mode
    sql: ${TABLE}.PULL_REQUEST_MODE

  - dimension: validation_required
    type: yesno
    sql: ${TABLE}.VALIDATION_REQUIRED

  - measure: count
    type: count
    drill_fields: []

