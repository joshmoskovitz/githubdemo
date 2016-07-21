- view: credentials_google
  sql_table_name: CREDENTIALS_GOOGLE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: domain
    sql: ${TABLE}.DOMAIN

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: google_user_id
    sql: ${TABLE}.GOOGLE_USER_ID

  - dimension_group: logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LOGGED_IN_AT

  - dimension: secret
    sql: ${TABLE}.SECRET

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.first_name, user.last_name, user.dev_mode_user_id, user.dev_branch_name]

