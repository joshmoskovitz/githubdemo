- view: dashboard
  sql_table_name: DASHBOARD
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: auto_run
    type: yesno
    sql: ${TABLE}.AUTO_RUN

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: filter_lookml
    sql: ${TABLE}.FILTER_LOOKML

  - dimension: hidden
    type: yesno
    sql: ${TABLE}.HIDDEN

  - dimension: refresh_interval
    sql: ${TABLE}.REFRESH_INTERVAL

  - dimension: space_id
    type: int
    # hidden: true
    sql: ${TABLE}.SPACE_ID

  - dimension: title
    sql: ${TABLE}.TITLE

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - user.first_name
    - user.last_name
    - user.dev_mode_user_id
    - user.dev_branch_name
    - space.name
    - space.id
    - dashboard_element.count
    - dashboard_filter.count
    - dashboard_layout.count
    - scheduled_task_dashboard.count

