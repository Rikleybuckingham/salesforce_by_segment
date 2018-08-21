view: usage__node {
  sql_table_name: public.node ;;

# Create Filters

# Create Dimensions

  dimension: short_node_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.short_node_id ;;
  }

  dimension: arena_id {
    type: number
    sql: ${TABLE}.arena_id ;;
  }

  dimension: arena_name {
    type: string
    sql: ${TABLE}.arena_name ;;
  }

  dimension: client_version {
    type: number
    sql: ${TABLE}.client_version ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: composite_id {
    type: string
    sql: ${TABLE}.company_id || '-' || lower(${TABLE}.source_env) ;;
    hidden: yes
  }

  dimension: delivery_count {
    type: number
    sql: ${TABLE}.delivery_count ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.end_time ;;
  }

  dimension: external_ip {
    type: number
    sql: ${TABLE}.external_ip ;;
  }

  dimension: gateway_ip {
    type: number
    sql: ${TABLE}.gateway_ip ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: inserted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.inserted_at ;;
  }

  dimension: internal_ip {
    type: number
    sql: ${TABLE}.internal_ip ;;
  }

  dimension_group: last_delivery {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_delivery_time ;;
  }

  dimension: last_delivery_title {
    type: string
    sql: ${TABLE}.last_delivery_title ;;
  }

  dimension: long_node_id {
    type: string
    sql: ${TABLE}.long_node_id ;;
  }

  dimension: machine_name {
    type: string
    sql: ${TABLE}.machine_name ;;
  }

  dimension: netman_moid {
    type: string
    sql: ${TABLE}.netman_moid ;;
  }

  dimension: netman_name {
    type: string
    sql: ${TABLE}.netman_name ;;
  }

  dimension_group: netman {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.netman_time ;;
  }

  dimension_group: report {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.report_time ;;
  }

  dimension: route_id {
    type: number
    sql: ${TABLE}.route_id ;;
  }

  dimension: source_env {
    label: "Dms"
    type: string
    sql: ${TABLE}.source_env ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_time ;;
  }

  dimension: subnet_mask {
    type: number
    sql: ${TABLE}.subnet_mask ;;
  }

# Create Measures

  measure: count {
    type: count
    drill_fields: [short_node_id, netman_name, arena_name, machine_name]
  }
}