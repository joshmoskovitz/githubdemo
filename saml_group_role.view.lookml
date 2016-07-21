- view: saml_group_role
  sql_table_name: SAML_GROUP_ROLE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: role_id
    type: int
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - dimension: saml_group_id
    type: int
    # hidden: true
    sql: ${TABLE}.SAML_GROUP_ID

  - measure: count
    type: count
    drill_fields: [id, role.id, role.name, saml_group.name, saml_group.id]

