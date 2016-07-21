- view: space_user
  sql_table_name: SPACE_USER
  fields:

  - dimension: space_id
    type: int
    # hidden: true
    sql: ${TABLE}.SPACE_ID

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
    - space.name
    - space.id
    - user.first_name
    - user.last_name
    - user.dev_mode_user_id
    - user.dev_branch_name

