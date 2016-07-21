- view: saml_config
  sql_table_name: SAML_CONFIG
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

  - dimension: enabled
    type: yesno
    sql: ${TABLE}.ENABLED

  - dimension: groups_attribute
    sql: ${TABLE}.GROUPS_ATTRIBUTE

  - dimension: idp_audience
    sql: ${TABLE}.IDP_AUDIENCE

  - dimension: idp_cert
    sql: ${TABLE}.IDP_CERT

  - dimension: idp_issuer
    sql: ${TABLE}.IDP_ISSUER

  - dimension: idp_url
    sql: ${TABLE}.IDP_URL

  - dimension_group: modified
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.MODIFIED_AT

  - dimension: modified_by
    type: int
    sql: ${TABLE}.MODIFIED_BY

  - dimension: new_user_migration_types
    sql: ${TABLE}.NEW_USER_MIGRATION_TYPES

  - dimension: set_roles_from_groups
    type: yesno
    sql: ${TABLE}.SET_ROLES_FROM_GROUPS

  - dimension_group: test_expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TEST_EXPIRES_AT

  - dimension: test_slug
    sql: ${TABLE}.TEST_SLUG

  - dimension: user_attribute_map_email
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_EMAIL

  - dimension: user_attribute_map_first_name
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_FIRST_NAME

  - dimension: user_attribute_map_last_name
    sql: ${TABLE}.USER_ATTRIBUTE_MAP_LAST_NAME

  - measure: count
    type: count
    drill_fields: [id, user_attribute_map_last_name, user_attribute_map_first_name, saml_config_default_new_user_role.count, saml_group.count]

