- view: look
  sql_table_name: LOOK
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

  - dimension: description
    sql: ${TABLE}.DESCRIPTION

  - dimension: public
    type: yesno
    sql: ${TABLE}.PUBLIC

  - dimension: public_slug
    sql: ${TABLE}.PUBLIC_SLUG

  - dimension: query_id
    type: int
    # hidden: true
    sql: ${TABLE}.QUERY_ID

  - dimension: space_id
    type: int
    # hidden: true
    sql: ${TABLE}.SPACE_ID

  - dimension: title
    sql: ${TABLE}.TITLE

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
    - query.id
    - user.first_name
    - user.last_name
    - user.dev_mode_user_id
    - user.dev_branch_name
    - space.name
    - space.id
    - dashboard_element.count
    - history.count
    - scheduled_look.count
    - scheduled_task_look.count

