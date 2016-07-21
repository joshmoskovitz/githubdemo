- view: embed_nonce
  sql_table_name: EMBED_NONCE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: external_user_id
    sql: ${TABLE}.EXTERNAL_USER_ID

  - dimension: nonce
    sql: ${TABLE}.NONCE

  - measure: count
    type: count
    drill_fields: [id]

