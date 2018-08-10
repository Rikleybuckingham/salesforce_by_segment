include: "sfbase__opportunities.view.lkml"
view: sf__opportunities {
  extends: [sfbase__opportunities]
  view_label: "Opportunities"

# Create Filters

# Create Dimensions

  dimension: opportunity_name {
    type: string
    sql:  ${TABLE}.name;;
  }

  dimension: created_raw {
    type:  date_raw
    hidden: yes
    sql: ${TABLE}.created_date ;;
  }

  dimension: close_raw {
    type:  date_raw
    hidden: yes
    sql: ${TABLE}.close_date ;;
  }

  dimension: close_quarter {
    type: date_quarter
    sql: ${TABLE}.close_date ;;
  }

  dimension: days_open {
    type: number
    sql: datediff(days, ${created_raw}, coalesce(${close_raw}, current_date) ) ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: annual_contract_value {
    type: number
    sql: ${TABLE}.annual_contract_value_c ;;
  }

  dimension: bookings_value {
    type: number
    sql: ${TABLE}.bookings_value_c ;;
  }

  dimension: contract_term_months {
    type: number
    sql: ${TABLE}.contract_term_months_c_c ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency_iso_code ;;
  }

# Create Measures

  measure: sum_of_bookings_value {
    type: sum
    sql: ${bookings_value} ;;
    value_format: "$#,##0"
  }

  measure: total_revenue {
    type: sum
    sql: ${total_value_c} ;;
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

  measure: total_pipeline_revenue {
    type: sum
    sql: ${bookings_value} ;;
    filters: {
      field: is_closed
      value: "No"
    }
    value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";$0.00"
  }

  measure: average_deal_size {
    type: average
    sql: ${bookings_value} ;;
    value_format: "$#,##0"
  }

  measure: count_won {
    type: count
    filters: {
      field: is_won
      value: "Yes"
    }
    drill_fields: [sf__opportunity.id, sf__account.id]
  }

  measure: average_days_open {
    type: average
    sql: ${days_open} ;;
  }

  measure: count_closed {
    type: count
    filters: {
      field: is_closed
      value: "Yes"
    }
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

  measure: win_percentage {
    type: number
    sql: 100.00 * ${count_won} / NULLIF(${count_closed}, 0) ;;
    value_format: "#0.00\%"
  }

  measure: open_percentage {
    type: number
    sql: 100.00 * ${count_open} / NULLIF(${count}, 0) ;;
    value_format: "#0.00\%"
  }
}
