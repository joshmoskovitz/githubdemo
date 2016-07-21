- view: pdt_event_log
  sql_table_name: PDT_EVENT_LOG
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: action
    sql: ${TABLE}.ACTION

  - dimension: action_data
    sql: ${TABLE}.ACTION_DATA

  - dimension: at
    type: number
    sql: ${TABLE}."AT"

  - dimension: connection
    sql: ${TABLE}.CONNECTION

  - dimension: hash_key
    sql: ${TABLE}.HASH_KEY

  - dimension: model_name
    sql: ${TABLE}.MODEL_NAME

  - dimension: table_name
    sql: ${TABLE}.TABLE_NAME

  - dimension: tid
    sql: ${TABLE}.TID

  - dimension: tseq
    type: int
    sql: ${TABLE}.TSEQ

  - dimension: view_name
    sql: ${TABLE}.VIEW_NAME

  - measure: count
    type: count
    drill_fields: [id, table_name, view_name, model_name]

