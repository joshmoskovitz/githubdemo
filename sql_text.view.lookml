- view: sql_text
  sql_table_name: SQL_TEXT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: cache_key
    sql: ${TABLE}.CACHE_KEY

  - dimension: text
    sql: ${TABLE}.TEXT

  - measure: count
    type: count
    drill_fields: [id]

