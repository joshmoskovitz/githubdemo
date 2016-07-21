- view: space
  sql_table_name: SPACE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: creator_id
    type: int
    sql: ${TABLE}.CREATOR_ID

  - dimension_group: deleted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.DELETED_AT

  - dimension: is_personal
    type: yesno
    sql: ${TABLE}.IS_PERSONAL

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: parent_id
    type: int
    sql: ${TABLE}.PARENT_ID

  - measure: count
    type: count
    drill_fields: [id, name, dashboard.count, look.count, space_user.count]

