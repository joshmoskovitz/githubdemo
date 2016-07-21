- view: user_attribute
  sql_table_name: USER_ATTRIBUTE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: key
    sql: ${TABLE}.KEY

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.USER_ID

  - dimension: value
    sql: ${TABLE}."VALUE"

  - measure: count
    type: count
    drill_fields: [id, user.first_name, user.last_name, user.dev_mode_user_id, user.dev_branch_name]

