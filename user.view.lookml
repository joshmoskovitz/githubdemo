- view: user
  sql_table_name: USER
  fields:

  - dimension: dev_mode_user_id
    primary_key: true
    type: int
    sql: ${TABLE}.DEV_MODE_USER_ID

  - dimension: browser_count
    type: int
    sql: ${TABLE}.BROWSER_COUNT

  - dimension: chat_disabled
    type: yesno
    sql: ${TABLE}.CHAT_DISABLED

  - dimension: chat_popover
    type: yesno
    sql: ${TABLE}.CHAT_POPOVER

  - dimension: dev_branch_name
    sql: ${TABLE}.DEV_BRANCH_NAME

  - dimension: dev_mode
    type: yesno
    sql: ${TABLE}.DEV_MODE

  - dimension: editor_keybinding_mode
    sql: ${TABLE}.EDITOR_KEYBINDING_MODE

  - dimension: email
    sql: ${TABLE}.EMAIL

  - dimension: eula_accepted
    type: yesno
    sql: ${TABLE}.EULA_ACCEPTED

  - dimension_group: eula_accepted
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.EULA_ACCEPTED_TIME

  - dimension: eula_accepted_version
    sql: ${TABLE}.EULA_ACCEPTED_VERSION

  - dimension: first_name
    sql: ${TABLE}.FIRST_NAME

  - dimension: home_space_id
    sql: ${TABLE}.HOME_SPACE_ID

  - dimension: id
    type: int
    sql: ${TABLE}.ID

  - dimension: is_admin
    type: yesno
    sql: ${TABLE}.IS_ADMIN

  - dimension: is_disabled
    type: yesno
    sql: ${TABLE}.IS_DISABLED

  - dimension: is_looker_employee
    type: yesno
    sql: ${TABLE}.IS_LOOKER_EMPLOYEE

  - dimension: last_name
    sql: ${TABLE}.LAST_NAME

  - dimension: marketing_email_updates
    type: yesno
    sql: ${TABLE}.MARKETING_EMAIL_UPDATES

  - dimension: models
    sql: ${TABLE}.MODELS

  - dimension: models_dir
    sql: ${TABLE}.MODELS_DIR

  - dimension: outgoing_access_token_id
    type: int
    sql: ${TABLE}.OUTGOING_ACCESS_TOKEN_ID

  - dimension: release_email_updates
    type: yesno
    sql: ${TABLE}.RELEASE_EMAIL_UPDATES

  - dimension: timezone
    sql: ${TABLE}.TIMEZONE

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - dev_mode_user_id
    - first_name
    - last_name
    - dev_branch_name
    - access_token.count
    - api_nonce.count
    - credentials_api.count
    - credentials_api3.count
    - credentials_email.count
    - credentials_embed.count
    - credentials_ephemeral.count
    - credentials_google.count
    - credentials_ldap.count
    - credentials_looker_openid.count
    - credentials_saml.count
    - credentials_totp.count
    - dashboard.count
    - db_connection.count
    - event.count
    - history.count
    - login.count
    - look.count
    - role_user.count
    - scheduled_look.count
    - scheduled_look_action.count
    - scheduled_task.count
    - scheduled_task_action_email.count
    - session.count
    - space_user.count
    - upload_table.count
    - user_access_filter.count
    - user_attribute.count

