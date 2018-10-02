view: sf__opportunity {
  sql_table_name: salesforce.opportunities ;;

# Create Filters

# Create Dimensions

  dimension: account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: annual_contract_value {
    type: number
    sql: ${TABLE}.annual_contract_value_c ;;
  }

  measure: average_days_open {
    type: average
    sql: ${days_open} ;;
  }

  dimension: bookings_value {
    type: number
    sql: ${TABLE}.bookings_value_c ;;
  }

  dimension: channel_partner {
    type: string
    sql:  ${TABLE}.channel_partner_c ;;
  }

  dimension: close_quarter {
    type: date_quarter
    sql: ${TABLE}.close_date ;;
  }

  dimension_group: close {
    type: time
    timeframes: [time, date, week, month, year, fiscal_quarter]
    sql: ${TABLE}.close_date ;;
  }

  dimension: close_raw {
    type:  date_raw
    hidden: yes
    sql: ${TABLE}.close_date ;;
  }

  dimension: contract_term_months {
    type: number
    sql: ${TABLE}.contract_term_months_c_c ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month, fiscal_quarter]
    sql: ${TABLE}.created_date ;;
  }

  dimension: created_by_id {
    type: string
    hidden: yes
    sql: ${TABLE}.created_by_id ;;
  }

  dimension: created_raw {
    type:  date_raw
    hidden: yes
    sql: ${TABLE}.created_date ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency_iso_code ;;
  }

  dimension: days_open {
    type: number
    sql: datediff(days, ${created_raw}, coalesce(${close_raw}, current_date) ) ;;
  }

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: infer_3_score_index_c {
    type: number
    sql: ${TABLE}.infer_3_score_index_c ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_lost {
    type: yesno
    sql: ${is_closed} AND NOT ${is_won} ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.is_won ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_activity_date ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_modified_by_id {
    type: string
    hidden: yes
    sql: ${TABLE}.last_modified_by_id ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_referenced_date ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_viewed_date ;;
  }

  dimension: opportunity_name {
    type: string
    sql:  ${TABLE}.name;;
  }

  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: owner_id {
    type: string
    hidden: yes
    sql: ${TABLE}.owner_id ;;
  }

  dimension: sql_date {
    label: "SQL Date"
    type: date
    sql: ${TABLE}.pipeline_date_c ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.stage_name ;;
  }

  dimension: total_value_c {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: upsell_c {
    type: yesno
    sql: ${TABLE}.upsell_c ;;
  }

# Create Measures

  measure: average_active_velocity {
    label: "SQL Velocity"
    type: average
    sql: datediff(days, ${created_date}, ${TABLE}.pipeline_date_c) ;;
    value_format: "#"
  }

  measure: avereage_contract_value_sum {
    label: "ACV Sum"
    type: sum
    sql: ${annual_contract_value} ;;
  }

  measure: average_deal_size {
    type: average
    sql: ${bookings_value} ;;
    value_format: "$#,##0"
  }

  measure: average_lost_velocity {
    label: "Lost Opportunity Velocity"
    type: average
    drill_fields: [detail*]
    sql: datediff(days, ${sql_date}}, ${close_date}) ;;
    value_format: "#"
    filters: {
      field: is_lost
      value: "Yes"
    }
  }

  measure: average_revenue_lost {
    label: "Average Revenue (Closed/Lost)"
    type: average
    sql: ${bookings_value} ;;
    filters: {
      field: is_lost
      value: "Yes"
    }
    value_format: "$#,##0"
  }

  measure: average_revenue_won {
    label: "Average Revenue (Closed/Won)"
    type: average
    sql: ${bookings_value} ;;
    filters: {
      field: is_won
      value: "Yes"
    }
    value_format: "$#,##0"
  }

  measure: average_won_velocity {
    label: "Won Opportunity Velocity"
    type: average
    drill_fields: [detail*]
    sql: datediff(days, ${TABLE}.pipeline_date_c, ${close_date}) ;;
    value_format: "#"
    filters: {
      field: is_won
      value: "Yes"
    }
  }

  measure: count {
    type: count
    drill_fields: [id, stage_name, accounts.id]
  }

  measure: count_closed {
    type: count
    filters: {
      field: is_closed
      value: "Yes"
    }
  }

  measure: count_lost {
    type: count
    filters: {
      field: is_closed
      value: "Yes"
    }
    filters: {
      field: is_won
      value: "No"
    }
    drill_fields: [sf__opportunity.id, sd__account.id]
  }

  measure: count_open {
    type: count
    filters: {
      field: is_closed
      value: "No"
    }
  }

  measure: count_sql {
    type: count
    label: "SQL Count"
    filters: {
      field: sql_date
      value: "-null"
    }
  }

  measure: count_won {
    type: count
    filters: {
      field: is_won
      value: "Yes"
    }
    drill_fields: [sf__opportunity.id, sf__account.id]
  }

  measure: open_percentage {
    type: number
    sql: 100.00 * ${count_open} / NULLIF(${count}, 0) ;;
    value_format: "#0.00\%"
  }

  measure: sum_of_bookings_value {
    type: sum
    sql: ${bookings_value} ;;
    value_format: "$#,##0"
  }

  measure: total_pipeline_revenue {
    type: sum
    sql: ${bookings_value} ;;
    filters: {
      field: is_closed
      value: "No"
    }
    value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";$0.00"
  }

  measure: total_revenue {
    type: sum
    sql: ${total_value_c} ;;
    value_format: "$#,##0"
  }

  measure: win_percentage {
    type: number
    sql: 100.00 * ${count_won} / NULLIF(${count_closed}, 0) ;;
    value_format: "#0.00\%"
  }

# Sets

  set: detail {
    fields: [id,
      #    - company
      #    - name
      #    - title
      #    - phone
      #    - email
      is_won, owner_id]
  }
}
