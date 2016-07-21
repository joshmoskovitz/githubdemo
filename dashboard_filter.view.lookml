- view: dashboard_filter
  sql_table_name: DASHBOARD_FILTER
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: dashboard_id
    type: int
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension: default_value
    sql: ${TABLE}.DEFAULT_VALUE

  - dimension: dimension
    sql: ${TABLE}.DIMENSION

  - dimension: explore
    sql: ${TABLE}.EXPLORE

  - dimension: model_name
    sql: ${TABLE}.MODEL_NAME

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: title
    sql: ${TABLE}.TITLE

  - dimension: type
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, model_name, name, dashboard.id]

