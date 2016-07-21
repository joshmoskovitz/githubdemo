- view: dashboard_layout
  sql_table_name: DASHBOARD_LAYOUT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: active
    type: yesno
    sql: ${TABLE}.ACTIVE

  - dimension: column_width
    type: int
    sql: ${TABLE}.COLUMN_WIDTH

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dashboard_id
    type: int
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ID

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: type
    sql: ${TABLE}.TYPE

  - dimension: width
    type: int
    sql: ${TABLE}.WIDTH

  - measure: count
    type: count
    drill_fields: [id, dashboard.id, dashboard_layout_component.count]

