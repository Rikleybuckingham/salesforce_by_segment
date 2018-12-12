view: usage__play {
  sql_table_name: public.play ;;

# Create Filters

# Create Dimensions

  dimension: acl_user {
    type: string
    sql: ${TABLE}.acl_user ;;
  }

  dimension: acl_user_guid {
    type: string
    sql: ${TABLE}.acl_user_guid ;;
  }

  dimension: bit_rate {
    type: number
    sql: ${TABLE}.bit_rate ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_ver {
    type: string
    sql: ${TABLE}.browser_ver ;;
  }

  dimension: buffer_time {
    type: number
    sql: ${TABLE}.buffer_time ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: content_moid {
    type: string
    sql: ${TABLE}.content_moid ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: delivery_guid {
    type: string
    sql: ${TABLE}.delivery_guid ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.duration ;;
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

  dimension: event_data {
    type: string
    sql: ${TABLE}.event_data ;;
  }

  dimension: file_size {
    type: number
    sql: ${TABLE}.file_size ;;
  }

  dimension: guid {
    type: string
    sql: ${TABLE}.guid ;;
  }

  dimension_group: harvest {
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
    sql: ${TABLE}.harvest_time ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: in_progress {
    type: number
    sql: ${TABLE}.in_progress ;;
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

  dimension: machine_name {
    type: string
    sql: ${TABLE}.machine_name ;;
  }

  dimension: machine_user_guid {
    type: string
    sql: ${TABLE}.machine_user_guid ;;
  }

  dimension: machine_user_name {
    type: string
    sql: ${TABLE}.machine_user_name ;;
  }

  dimension: moid {
    type: string
    sql: ${TABLE}.moid ;;
  }

  dimension: os {
    type: string
    sql: ${TABLE}.os ;;
  }

  dimension: os_ver {
    type: string
    sql: ${TABLE}.os_ver ;;
  }

  dimension: percent {
    type: number
    sql: ${TABLE}.percent ;;
  }

  dimension: play_duration {
    type: number
    sql: ${TABLE}.play_duration ;;
  }

  dimension: prepare_time {
    type: number
    sql: ${TABLE}.prepare_time ;;
  }

  dimension: segment_data {
    type: string
    sql: ${TABLE}.segment_data ;;
  }

  dimension: short_node_id {
    type: string
    sql: ${TABLE}.short_node_id ;;
  }

  dimension: source_env {
    label: "Dms"
    type: string
    sql: ${TABLE}.source_env ;;
  }

  dimension: stall_count {
    type: number
    sql: ${TABLE}.stall_count ;;
  }

  dimension: stall_time {
    type: number
    sql: ${TABLE}.stall_time ;;
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

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

# Create Measures

  measure: count {
    type: count
    drill_fields: [id, machine_user_name, machine_name]
  }
}
