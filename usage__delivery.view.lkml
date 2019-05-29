view: usage__delivery {
  sql_table_name: public.delivery ;;
  suggestions: no

# Create Filters

  filter: company_id_filter {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  filter: source_env_filter {
    type: string
    sql: ${TABLE}.source_env ;;
  }
# Create Dimensions

  dimension: locality {
    label: "Locality"
    type: string
    sql: ${TABLE}.arena_name ;;

    description: "A manually assigned agent group name consisting of one or more IP subnet ranges."
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: content_moid {
    type: string
    sql: ${TABLE}.content_moid ;;
  }

  dimension: content_title {
    type: string
    sql: ${TABLE}.content_title ;;
    link: {
      label: "Content Details"
      url: "/dashboards/salesforce::content_details?content_moid_filter={{ content_moid._value | url_encode }}&company_id_filter={{ company_id._value | url_encode }}&source_env_filter={{ dms._value | url_encode }}"
      }
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: dms {
    type: string
    sql: ${TABLE}.source_env ;;
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
    type: string
    sql: ${TABLE}.external_ip ;;
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
    label: "Agent ID"
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
    type: string
    case: {
      when: {
        label: "In Progress"
        sql: ${TABLE}.status = 0 ;;
      }
      when: {
        label: "Completed"
        sql: ${TABLE}.status = 1 ;;
      }
      when: {
        label: "Failed"
        sql: ${TABLE}.status = 2 ;;
      }
      when: {
        label: "Canceled"
        sql: ${TABLE}.status = 3 ;;
      }
    }
  }

  dimension: total_bytes {
    type: number
    sql: ${TABLE}.total_bytes ;;
  }

  dimension: type {
    type: string
    case: {
      when: {
        sql: ${TABLE}.type = 0 or ${TABLE}.type = 1 or ${TABLE}.type = 3;;
        label: "VoD"
      }
      when: {
        sql: ${TABLE}.type = 2 ;;
        label: "Live"
      }
      when: {
        sql: ${TABLE}.type = 4 ;;
        label: "SCCM"
      }
    }
  }

  dimension: wan_bytes {
    type: number
    sql: ${TABLE}.wan_bytes ;;
  }

  dimension: wans {
    type: number
    sql: ${TABLE}.wans ;;
  }

# Create Measures

  measure: count {
    label: "Delivery Count"
    type: count
    drill_fields: [delivery_details*]
  }

  measure: first_start_time {
    label: "First Start Time"
    type: date_time
    sql: min(${TABLE}.start_time) ;;
  }

  measure: lan_bytes_sum {
    type: sum
    sql: ${TABLE}.lan_bytes ;;
  }

  measure: last_start_time {
    label: "Last Start Time"
    type: date_time
    sql: max(${TABLE}.start_time) ;;
  }
  measure: origin_bytes_sum {
    label: "Origin Bytes Sum"
    type: sum
    sql: ${TABLE}.origin_bytes ;;
    }

  measure: origin_gb_sum {
    label: "Origin GB Sum"
    type: sum
    sql: ${origin_bytes} * 1e-9 ;;
    value_format_name: decimal_2
  }

  measure: peer_bytes_sum {
    label: "Peer Bytes Sum"
    type: sum
    sql: ${peer_bytes} ;;
  }

  measure: peer_gb_sum {
    label: "Peer GB Sum"
    type: sum
    sql: ${peer_bytes} * 1e-9 ;;
    value_format_name: decimal_0
  }

  measure: peering_percentage {
    type: number
    sql: ${peer_bytes_sum} / NULLIF(${total_bytes_sum},0) ;;
    value_format_name: percent_2
  }

  measure: total_bytes_sum {
    label: "Total Bytes Sum"
    type: sum
    sql: ${total_bytes};;
  }

  measure: total_gb {
    label: "Total GB Sum"
    type:  sum
    sql: ${total_bytes} * 1e-9  ;;
    value_format: "#,##0"
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

  measure: unique_company_count{
    label: "Company Count"
    type: count_distinct
    sql: ${company_id} ;;
  }

  measure: unique_content {
    label: "Unique Content Count"
    type:  count_distinct
    sql: ${content_moid} ;;
  }

  measure: wan_bytes_sum {
    type: sum
    sql: ${TABLE}.wan_bytes ;;
  }

  measure: 1_month_ago_agents {
    label: "Last Month Agent Count"
    type: count_distinct
    sql: ${short_node_id} ;;
    filters: {
      field: start_date
      value: "1 month ago"
    }
  }

  measure: 2_month_ago_agents {
    label: "Two Months Ago Agent Count"
    type: count_distinct
    sql: ${short_node_id} ;;
    filters: {
      field: start_date
      value: "2 months ago"
    }
  }

  measure: monthly_percent_difference{
    label: "Month Over Month Agent Percent"
    type: number
    sql: cast(${1_month_ago_agents} as float) / cast(${2_month_ago_agents} as float) ;;
    value_format_name: percent_1
  }

  set: content_details {
    fields: [content_title, content_moid, unique_agent_count, count, first_start_time, last_start_time, peering_percentage]
  }

  set: delivery_details {
    fields: [short_node_id, content_title, status, lan_bytes, wan_bytes, peer_bytes, origin_bytes, start_time]
  }
}
