- view: scheduled_task
  sql_table_name: SCHEDULED_TASK
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: attempts
    type: int
    sql: ${TABLE}.ATTEMPTS

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: cron_string
    sql: ${TABLE}.CRON_STRING

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: error
    sql: ${TABLE}.ERROR

  - dimension_group: last_delivery_attempt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_DELIVERY_ATTEMPT_AT

  - dimension: last_run_at
    type: number
    sql: ${TABLE}.LAST_RUN_AT

  - dimension: next_run_at
    type: number
    sql: ${TABLE}.NEXT_RUN_AT

  - dimension: timezone
    sql: ${TABLE}.TIMEZONE

  - dimension: type
    sql: ${TABLE}.TYPE

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
    - mail_job.count
    - scheduled_task_action_email.count
    - scheduled_task_dashboard.count
    - scheduled_task_look.count

