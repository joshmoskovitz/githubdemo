- view: upload_table
  sql_table_name: UPLOAD_TABLE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: built_at
    type: int
    sql: ${TABLE}.BUILT_AT

  - dimension: created_at
    type: int
    sql: ${TABLE}.CREATED_AT

  - dimension: db_connection_id
    type: int
    # hidden: true
    sql: ${TABLE}.DB_CONNECTION_ID

  - dimension: definition
    sql: ${TABLE}.DEFINITION

  - dimension: file_type
    sql: ${TABLE}.FILE_TYPE

  - dimension: table_name
    sql: ${TABLE}.TABLE_NAME

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.USER_ID

  - dimension: view_name
    sql: ${TABLE}.VIEW_NAME

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - table_name
    - view_name
    - user.first_name
    - user.last_name
    - user.dev_mode_user_id
    - user.dev_branch_name
    - db_connection.name
    - db_connection.tmp_db_name
    - db_connection.ssh_username
    - db_connection.id
    - db_connection.username

