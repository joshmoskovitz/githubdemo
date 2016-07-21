- view: saml_config_default_new_user_role
  sql_table_name: SAML_CONFIG_DEFAULT_NEW_USER_ROLE
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: role_id
    type: int
    # hidden: true
    sql: ${TABLE}.ROLE_ID

  - dimension: saml_config_id
    type: int
    # hidden: true
    sql: ${TABLE}.SAML_CONFIG_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - saml_config.user_attribute_map_last_name
    - saml_config.user_attribute_map_first_name
    - saml_config.id
    - role.id
    - role.name

