- view: mail_job
  sql_table_name: MAIL_JOB
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: attachment_file
    sql: ${TABLE}.ATTACHMENT_FILE

  - dimension: attachment_file_name
    sql: ${TABLE}.ATTACHMENT_FILE_NAME

  - dimension: attempts
    type: int
    sql: ${TABLE}.ATTEMPTS

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: hash
    sql: ${TABLE}.HASH

  - dimension: html_body
    sql: ${TABLE}.HTML_BODY

  - dimension_group: last_attempted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_ATTEMPTED_AT

  - dimension_group: next_attempt
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.NEXT_ATTEMPT_AT

  - dimension: raw
    sql: ${TABLE}.RAW

  - dimension: reply_to
    sql: ${TABLE}.REPLY_TO

  - dimension: scheduled_task_id
    type: int
    # hidden: true
    sql: ${TABLE}.SCHEDULED_TASK_ID

  - dimension: subject
    sql: ${TABLE}.SUBJECT

  - dimension: to
    sql: ${TABLE}."TO"

  - dimension: type
    sql: ${TABLE}.TYPE

  - measure: count
    type: count
    drill_fields: [id, attachment_file_name, scheduled_task.id]

