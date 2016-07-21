- view: ldap_group
  sql_table_name: LDAP_GROUP
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: ldap_config_id
    type: int
    # hidden: true
    sql: ${TABLE}.LDAP_CONFIG_ID

  - dimension: name
    sql: ${TABLE}.NAME

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - ldap_config.id
    - ldap_config.user_attribute_map_last_name
    - ldap_config.user_attribute_map_first_name
    - ldap_config.encrypted_auth_username
    - ldap_group_role.count

