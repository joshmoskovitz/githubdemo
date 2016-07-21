- view: new_active_derived_table
  sql_table_name: NEW_ACTIVE_DERIVED_TABLE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: cache_value
    sql: ${TABLE}.CACHE_VALUE

  - dimension: connection
    sql: ${TABLE}.CONNECTION

  - dimension: dead_at
    type: int
    sql: ${TABLE}.DEAD_AT

  - dimension: key
    sql: ${TABLE}.KEY

  - dimension: mode
    type: int
    sql: ${TABLE}.MODE

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: rename_to
    sql: ${TABLE}.RENAME_TO

  - dimension: trigger_at
    type: int
    sql: ${TABLE}.TRIGGER_AT

  - dimension: trigger_duration
    type: int
    sql: ${TABLE}.TRIGGER_DURATION

  - dimension: trigger_error
    sql: ${TABLE}.TRIGGER_ERROR

  - measure: count
    type: count
    drill_fields: [id, name]

