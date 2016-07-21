- view: cache_index
  sql_table_name: CACHE_INDEX
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: cache
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CACHE_TIME

  - dimension: cleanup_scheme
    sql: ${TABLE}.CLEANUP_SCHEME

  - dimension: computation_time
    type: number
    sql: ${TABLE}.COMPUTATION_TIME

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: encrypted
    type: yesno
    sql: ${TABLE}.ENCRYPTED

  - dimension: entry_type
    sql: ${TABLE}.ENTRY_TYPE

  - dimension: execution_time
    type: number
    sql: ${TABLE}.EXECUTION_TIME

  - dimension_group: expiration
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRATION

  - dimension: gzipped
    type: yesno
    sql: ${TABLE}.GZIPPED

  - dimension: hash
    sql: ${TABLE}.HASH

  - dimension_group: last_touched
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_TOUCHED_AT

  - dimension: node_id
    type: int
    # hidden: true
    sql: ${TABLE}.NODE_ID

  - dimension: query_text
    sql: ${TABLE}.QUERY_TEXT

  - dimension: result_columns
    type: int
    sql: ${TABLE}.RESULT_COLUMNS

  - dimension: result_rows
    type: int
    sql: ${TABLE}.RESULT_ROWS

  - dimension: result_size_bytes
    type: int
    sql: ${TABLE}.RESULT_SIZE_BYTES

  - dimension: time_to_live_without_touch
    type: int
    sql: ${TABLE}.TIME_TO_LIVE_WITHOUT_TOUCH

  - dimension: touch_count
    type: int
    sql: ${TABLE}.TOUCH_COUNT

  - dimension_group: touched
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TOUCHED_AT

  - dimension: ttl
    type: int
    sql: ${TABLE}.TTL

  - measure: count
    type: count
    drill_fields: [id, node.id, node.hostname]

