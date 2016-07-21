- view: scheduled_task_dashboard
  sql_table_name: SCHEDULED_TASK_DASHBOARD
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dashboard
    sql: ${TABLE}.DASHBOARD

  - dimension: dashboard_id
    type: int
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension: dashboard_path
    sql: ${TABLE}.DASHBOARD_PATH

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: format
    sql: ${TABLE}.FORMAT

  - dimension: model
    sql: ${TABLE}.MODEL

  - dimension: scheduled_task_id
    type: int
    # hidden: true
    sql: ${TABLE}.SCHEDULED_TASK_ID

  - measure: count
    type: count
    drill_fields: [id, dashboard.id, scheduled_task.id]

