- view: dashboard_layout_component
  sql_table_name: DASHBOARD_LAYOUT_COMPONENT
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: column
    type: int
    sql: ${TABLE}."COLUMN"

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dashboard_element_id
    type: int
    # hidden: true
    sql: ${TABLE}.DASHBOARD_ELEMENT_ID

  - dimension: dashboard_layout_id
    type: int
    # hidden: true
    sql: ${TABLE}.DASHBOARD_LAYOUT_ID

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: height
    type: int
    sql: ${TABLE}.HEIGHT

  - dimension: row
    type: int
    sql: ${TABLE}."ROW"

  - dimension: width
    type: int
    sql: ${TABLE}.WIDTH

  - measure: count
    type: count
    drill_fields: [id, dashboard_element.id, dashboard_layout.id]

