- view: history
  sql_table_name: HISTORY
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.ID

  - dimension: cache
    type: yesno
    sql: ${TABLE}.CACHE

  - dimension: cache_key
    sql: ${TABLE}.CACHE_KEY

  - dimension: cache_only
    type: yesno
    sql: ${TABLE}.CACHE_ONLY

  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.COMPLETED_AT

  - dimension: connection_id
    sql: ${TABLE}.CONNECTION_ID

  - dimension: connection_name
    sql: ${TABLE}.CONNECTION_NAME

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CREATED_AT

  - dimension: dialect
    sql: ${TABLE}.DIALECT

  - dimension: force_production
    type: yesno
    sql: ${TABLE}.FORCE_PRODUCTION

  - dimension: generate_links
    type: yesno
    sql: ${TABLE}.GENERATE_LINKS

  - dimension: look_id
    type: int
    # hidden: true
    sql: ${TABLE}.LOOK_ID

  - dimension: message
    sql: ${TABLE}.MESSAGE

  - dimension: node_id
    type: int
    # hidden: true
    sql: ${TABLE}.NODE_ID

  - dimension: path_prefix_id
    type: int
    # hidden: true
    sql: ${TABLE}.PATH_PREFIX_ID

  - dimension: query_id
    type: int
    # hidden: true
    sql: ${TABLE}.QUERY_ID

  - dimension: result_source
    sql: ${TABLE}.RESULT_SOURCE

  - dimension: runtime
    type: number
    sql: ${TABLE}.RUNTIME

  - dimension: slug
    sql: ${TABLE}.SLUG

  - dimension: source
    sql: ${TABLE}.SOURCE

  - dimension: status
    sql: ${TABLE}.STATUS

  - dimension: title
    sql: ${TABLE}.TITLE

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.USER_ID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - connection_name
    - path_prefix.id
    - look.id
    - query.id
    - user.first_name
    - user.last_name
    - user.dev_mode_user_id
    - user.dev_branch_name
    - node.id
    - node.hostname

