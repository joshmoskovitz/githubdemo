- view: ldap_config
  sql_table_name: LDAP_CONFIG
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: active
    type: yesno
    sql: ${TABLE}.ACTIVE

  - dimension: alternate_email_login_allowed
    type: yesno
    sql: ${TABLE}.ALTERNATE_EMAIL_LOGIN_ALLOWED

  - dimension: auth_requires_role
    type: yesno
    sql: ${TABLE}.AUTH_REQUIRES_ROLE

  - dimension: connection_host
    sql: ${TABLE}.CONNECTION_HOST

  - dimension: connection_port
    sql: ${TABLE}.CONNECTION_PORT

  - dimension: connection_tls
    type: yesno
    sql: ${TABLE}.CONNECTION_TLS

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: encrypted_auth_password
    sql: ${TABLE}.ENCRYPTED_AUTH_PASSWORD

  - dimension: encrypted_auth_username
    sql: ${TABLE}.ENCRYPTED_AUTH_USERNAME

  - dimension: external_signon_url
    sql: ${TABLE}.EXTERNAL_SIGNON_URL

  - dimension: groups_base_dn
    sql: ${TABLE}.GROUPS_BASE_DN

  - dimension: groups_finder_type
    sql: ${TABLE}.GROUPS_FINDER_TYPE

  - dimension: groups_member_attribute
    sql: ${TABLE}.GROUPS_MEMBER_ATTRIBUTE

  - dimension: groups_objectclasses
    sql: ${TABLE}.GROUPS_OBJECTCLASSES

  - dimension: merge_new_users_by_email
    type: yesno
    sql: ${TABLE}.MERGE_NEW_USERS_BY_EMAIL

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_AT

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension: set_roles_from_groups
    type: yesno
    sql: ${TABLE}.SET_ROLES_FROM_GROUPS

  - dimension: user_attribute_map_email
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_EMAIL

  - dimension: user_attribute_map_first_name
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_FIRST_NAME

  - dimension: user_attribute_map_last_name
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_LAST_NAME

  - dimension: user_attribute_map_ldap_id
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_LDAP_ID

  - dimension: user_bind_base_dn
    sql: ${TABLE}.USER_BIND_BASE_DN

  - dimension: user_id_attribute_names
    sql: ${TABLE}.USER_ID_ATTRIBUTE_NAMES

  - dimension: user_objectclass
    sql: ${TABLE}.USER_OBJECTCLASS

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - user_attribute_map_last_name
    - user_attribute_map_first_name
    - encrypted_auth_username
    - ldap_config_default_new_user_role.count
    - ldap_group.count

