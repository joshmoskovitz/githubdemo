- view: distributed_mutex
  sql_table_name: DISTRIBUTED_MUTEX
  fields:

  - dimension_group: last_heartbeat
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_HEARTBEAT

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: node_id
    type: int
    # hidden: true
    sql: ${TABLE}.NODE_ID

  - dimension: thread_id
    sql: ${TABLE}.THREAD_ID

  - measure: count
    type: count
    drill_fields: [name, node.id, node.hostname]

