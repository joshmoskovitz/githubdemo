- view: credentials_embed
  sql_table_name: CREDENTIALS_EMBED
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: external_user_id
    sql: ${TABLE}.EXTERNAL_USER_ID

  - dimension_group: last_logged_in
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LAST_LOGGED_IN_AT

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: [id, user.first_name, user.last_name, user.dev_mode_user_id, user.dev_branch_name]

