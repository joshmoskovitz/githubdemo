- view: access_token
  sql_table_name: ACCESS_TOKEN
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: credentials_api3_id
    type: int
    # hidden: true
    sql: ${TABLE}.CREDENTIALS_API3_ID

  - dimension: encrypted_code
    sql: ${TABLE}.ENCRYPTED_CODE

  - dimension: encrypted_token
    sql: ${TABLE}.ENCRYPTED_TOKEN

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EXPIRES_AT

  - dimension: grant_type
    sql: ${TABLE}.GRANT_TYPE

  - dimension: resource_owner_id
    type: int
    sql: ${TABLE}.RESOURCE_OWNER_ID

  - dimension: role_id
    type: int
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - dimension: session_id
    type: int
    # hidden: true
    sql: ${TABLE}.SESSION_ID

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
    - credentials_api3.id
    - user.first_name
    - user.last_name
    - user.dev_mode_user_id
    - user.dev_branch_name
    - role.id
    - role.name
    - session.id
    - session.count

