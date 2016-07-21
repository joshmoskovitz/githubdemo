- view: path_prefix
  sql_table_name: PATH_PREFIX
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: prefix
    sql: ${TABLE}.PREFIX

  - dimension: sha
    sql: ${TABLE}.SHA

  - measure: count
    type: count
    drill_fields: [id, history.count]

