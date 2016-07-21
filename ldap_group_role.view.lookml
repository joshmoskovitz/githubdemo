- view: ldap_group_role
  sql_table_name: LDAP_GROUP_ROLE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: ldap_group_id
    type: int
    # hidden: true
    sql: ${TABLE}.LDAP_GROUP_ID

  - dimension: role_id
    type: int
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - measure: count
    type: count
    drill_fields: [id, ldap_group.id, ldap_group.name, role.id, role.name]

