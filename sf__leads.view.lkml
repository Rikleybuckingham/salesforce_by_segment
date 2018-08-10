include: "sfbase__leads.view.lkml"
view: sf__leads {
  extends: [sfbase__leads]
  view_label: "Leads"

# Create Filters

  filter: lead_id_filter {
    type: string
    sql: replace({% parameter lead_id_filter %}, '-', '') = ${lead_id} ;;
  }

# Create Dimensions

  dimension: mql_date {
    type: date
    sql: ${TABLE}.marketing_qualified_date_c ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
    link: {
      label: "Lead Insights Dashboard"
      url: "salesforce/lead_insights?lead_id_filter={{ lead_id._value | url_encode}}"
    }
  }

  dimension: acquisition_program {
    type: string
    sql: ${TABLE}.mkto_71_acquisition_program_c ;;
  }

  dimension_group: acquisition_date {
    type: time
    hidden: yes
    timeframes: [time, date, week, month]
    sql: ${TABLE}.mkto_71_acquisition_date_c ;;
  }

  dimension_group: last_status_updated_timestamp {
    type: time
    hidden: yes
    timeframes: [time, date, week, month]
    sql: ${TABLE}.statushistory_last_status_updated_c ;;
  }

  dimension_group: marketing_qualified_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.marketing_qualified_date_c ;;
  }

  dimension_group: interesting_moment_timestamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.mkto_si_last_interesting_moment_date_c ;;
  }

  dimension: mql_velocity {
    type: number
    sql: datediff(days, ${created_date}, ${mql_date}) ;;
  }

# Create Measures

  measure:  currently_active_leads_count{
    type: count
    filters: {
      field: interesting_moment_timestamp_date
      value: "30 days"
    }
  }

  measure: net_mql_count {
    type: count
    filters: {
      field: mql_date
      value: "-null"
    }
  }

  measure: converted_to_contact_count {
    type: count
    filters: {
      field: converted_contact_id
      value: "-null"
    }
  }

  measure: converted_to_account_count {
    type: count
    filters: {
      field: converted_account_id
      value: "-null"
    }
  }

  measure: converted_to_opportunity_count {
    type: count
    filters: {
      field: converted_opportunity_id
      value: "-null"
    }
  }

  measure: days_mql_open{
    label: "Days MQL Open"
    type: average
    sql: datediff(days, ${mql_date}, getdate()) ;;
    filters: {
      field: mql_date
      value: "-null"
    }
    filters: {
      field: converted_opportunity_id
      value: "null"
    }
  }

  measure: average_opportunity_velocity {
    label: "Average Opportunity Velocity"
    type: average
    sql: datediff(days, ${mql_date}, ${converted_date}) ;;

    filters: {
      field: converted_opportunity_id
      value: "-null"
    }
  }

  measure: average_mql_velocity {
    label: "Average MQL Velocity"
    type: average
    sql: datediff(days, ${created_date}, ${mql_date}) ;;

    filters: {
      field: mql_velocity
      value: ">0"
    }
  }

  measure: conversion_to_contact_percent {
    sql: 100.00 * ${converted_to_contact_count} / NULLIF(${count},0) ;;
    type: number
    value_format: "0.00\%"
  }

  measure: conversion_to_account_percent {
    sql: 100.00 * ${converted_to_account_count} / NULLIF(${count},0) ;;
    type: number
    value_format: "0.00\%"
  }

  measure: conversion_to_opportunity_percent {
    sql: 100.00 * ${converted_to_opportunity_count} / NULLIF(${count},0) ;;
    type: number
    value_format: "0.00\%"
  }

  set: detail {
    fields: [lead_id, status]
  }
}
