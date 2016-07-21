- view: role
  sql_table_name: ROLE
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

  - dimension: model_set_id
    type: int
    # hidden: true
    sql: ${TABLE}.MODEL_SET_ID

  - dimension: models
    sql: ${TABLE}.MODELS

  - dimension: name
    sql: ${TABLE}.NAME

  - dimension: permission_set_id
    type: int
    # hidden: true
    sql: ${TABLE}.PERMISSION_SET_ID

  - dimension: permissions
    sql: ${TABLE}.PERMISSIONS

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - model_set.id
    - model_set.name
    - permission_set.name
    - permission_set.id
    - access_token.count
    - ldap_config_default_new_user_role.count
    - ldap_group_role.count
    - role_user.count
    - saml_config_default_new_user_role.count
    - saml_group_role.count

