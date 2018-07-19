view: usage__delivery {
  sql_table_name: usage_data.delivery ;;
  suggestions: no

  dimension: delivery_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.delivery_id ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: content_moid {
    type: string
    sql: ${TABLE}.content_moid ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}."date" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date"
  }

  dimension: dms {
    type: string
    sql: ${TABLE}.dms ;;
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

  dimension: lan_bytes {
    type: number
    sql: ${TABLE}.lan_bytes ;;
  }

  dimension: lans {
    type: number
    sql: ${TABLE}.lans ;;
  }

  dimension: moid {
    type: string
    sql: ${TABLE}.moid ;;
  }

  dimension: origin_bytes {
    type: number
    sql: ${TABLE}.origin_bytes ;;
  }

  dimension: origins {
    type: number
    sql: ${TABLE}.origins ;;
  }

  dimension: peer_bytes {
    type: number
    sql: ${TABLE}.peer_bytes ;;
  }

  dimension: peers {
    type: number
    sql: ${TABLE}.peers ;;
  }

  dimension: short_node_id {
    type: string
    sql: ${TABLE}.short_node_id ;;
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

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: total_bytes {
    type: number
    sql: ${TABLE}.total_bytes ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }

  dimension: wan_bytes {
    type: number
    sql: ${TABLE}.wan_bytes ;;
  }

  dimension: wans {
    type: number
    sql: ${TABLE}.wans ;;
  }

  measure: count {
    label: "Delivery Count"
    type: count
  }

  measure: origin_bytes_sum {
    label: "Origin Bytes Sum"
    type: sum
    sql: ${TABLE}.origin_bytes ;;
    }

  measure: peer_bytes_sum {
    label: "Peer Bytes Sum"
    type: sum
    sql: ${peer_bytes} ;;
  }

  measure: peering_percentage {
    type: number
    sql: ${peer_bytes_sum} / ${total_bytes_sum} ;;
    value_format_name: percent_0
  }

  measure: total_bytes_sum {
    label: "Total Bytes Sum"
    type: sum
    sql: ${total_bytes};;
  }

  measure: total_gb {
    label: "Total GB Sum"
    type:  sum
    sql: ${total_bytes} / 1e9  ;;
    value_format_name: decimal_0
  }

  measure: unique_agent_count {
    label: "Agent Count"
    type: count_distinct
    sql: ${short_node_id} ;;
    filters: {
      field: short_node_id
      value: "-EMPTY"
    }
  }

  measure: unique_content {
    label: "Unique Content Count"
    type:  count_distinct
    sql: ${content_moid} ;;
  }

}
