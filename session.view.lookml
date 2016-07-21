- view: session
  sql_table_name: SESSION
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: access_token_id
    type: int
    # hidden: true
    sql: ${TABLE}.ACCESS_TOKEN_ID

  - dimension: browser
    sql: ${TABLE}.BROWSER

  - dimension: city
    sql: ${TABLE}.CITY

  - dimension: country
    sql: ${TABLE}.COUNTRY

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: credentials_type
    sql: ${TABLE}.CREDENTIALS_TYPE

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRES_AT

  - dimension_group: extended
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXTENDED_AT

  - dimension: extended_count
    type: int
    sql: ${TABLE}.EXTENDED_COUNT

  - dimension: ip_address
    sql: ${TABLE}.IP_ADDRESS

  - dimension: operating_system
    sql: ${TABLE}.OPERATING_SYSTEM

  - dimension: state
    sql: ${TABLE}.STATE

  - dimension: sudo_url
    sql: ${TABLE}.SUDO_URL

  - dimension: sudo_user_id
    type: int
    sql: ${TABLE}.SUDO_USER_ID

  - dimension: token
    sql: ${TABLE}.TOKEN

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
    - access_token.id
    - access_token.count

