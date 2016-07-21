- view: lookml_model
  sql_table_name: LOOKML_MODEL
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: project_name
    sql: ${TABLE}.PROJECT_NAME

  - dimension: unlimited_db_connections
    type: yesno
    sql: ${TABLE}.UNLIMITED_DB_CONNECTIONS

  - measure: count
    type: count
    drill_fields: [id, name, project_name, lookml_model_db_connection.count]

