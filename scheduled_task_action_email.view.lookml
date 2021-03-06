- view: scheduled_task_action_email
  sql_table_name: SCHEDULED_TASK_ACTION_EMAIL
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: external_email
    sql: ${TABLE}.EXTERNAL_EMAIL

  - dimension: scheduled_task_id
    type: int
    # hidden: true
    sql: ${TABLE}.SCHEDULED_TASK_ID

  - dimension: slug
    sql: ${TABLE}.SLUG

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
    - scheduled_task.id

