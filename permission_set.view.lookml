- view: permission_set
  sql_table_name: PERMISSION_SET
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: built_in
    type: yesno
    sql: ${TABLE}.BUILT_IN

  - dimension: embed
    type: yesno
    sql: ${TABLE}.EMBED

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: permissions
    sql: ${TABLE}.PERMISSIONS

  - dimension: unlimited
    type: yesno
    sql: ${TABLE}.UNLIMITED

  - measure: count
    type: count
    drill_fields: [id, name, role.count]

