- view: query
  sql_table_name: QUERY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: client_id
    sql: ${TABLE}.CLIENT_ID

  - dimension: column_limit
    sql: ${TABLE}.COLUMN_LIMIT

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dynamic_fields
    sql: ${TABLE}.DYNAMIC_FIELDS

  - dimension: fields
    sql: ${TABLE}.FIELDS

  - dimension: filter_config
    sql: ${TABLE}.FILTER_CONFIG

  - dimension: filters
    sql: ${TABLE}.FILTERS

  - dimension: hash
    sql: ${TABLE}.HASH

  - dimension: limit
    sql: ${TABLE}.LIMIT

  - dimension: model
    sql: ${TABLE}.MODEL

  - dimension: pivots
    sql: ${TABLE}.PIVOTS

  - dimension: query_timezone
    sql: ${TABLE}.QUERY_TIMEZONE

  - dimension: row_total
    sql: ${TABLE}.ROW_TOTAL

  - dimension: runtime
    type: number
    sql: ${TABLE}.RUNTIME

  - dimension: slug
    sql: ${TABLE}.SLUG

  - dimension: sorts
    sql: ${TABLE}.SORTS

  - dimension: total
    type: yesno
    sql: ${TABLE}.TOTAL

  - dimension: view
    sql: ${TABLE}.VIEW

  - dimension: vis_config
    sql: ${TABLE}.VIS_CONFIG

  - dimension: visible_ui_sections
    sql: ${TABLE}.VISIBLE_UI_SECTIONS

  - measure: count
    type: count
    drill_fields: [id, history.count, look.count]

