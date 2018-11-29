view: sf__lead {
  sql_table_name: salesforce.leads ;;

# Create Filters

  filter: lead_id_filter {
    type: string
    sql: replace({% parameter lead_id_filter %}, '-', '') = ${lead_id} ;;
  }

# Create Dimensions

  dimension_group: acquisition_date {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.mkto_71_acquisition_date_c ;;
  }

  dimension: acquisition_program {
    type: string
    sql: ${TABLE}.mkto_71_acquisition_program_c ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
    link: {
      label: "Lead Insights Dashboard"
      url: "salesforce/lead_insights?lead_id_filter={{ lead_id._value | url_encode}}"
    }
  }

  dimension_group: converted {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.converted_date ;;
  }

  dimension: converted_account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.converted_account_id ;;
  }

  dimension: converted_contact_id {
    type: string
    hidden: yes
    sql: ${TABLE}.converted_contact_id ;;
  }

  dimension: converted_opportunity_id {
    type: string
    hidden: yes
    sql: ${TABLE}.converted_opportunity_id ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month, year, fiscal_quarter]
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: last_interesting_moment {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.mkto_si_last_interesting_moment_date_c ;;
  }

  dimension: is_converted {
    type: yesno
    sql: ${TABLE}.is_converted ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
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
    sql: ${TABLE}.last_modified_by_id ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_referenced_date ;;
  }

  dimension_group: last_status_updated {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.statushistory_last_status_updated_c ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_viewed_date ;;
  }

  dimension: lead_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.lead_source ;;
  }

  dimension_group: mql {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.marketing_qualified_date_c ;;
  }

  dimension: mql_velocity {
    type: number
    sql: ${mql_date}-${created_date} ;;
  }

  dimension: owner_id {
    type: string
    hidden: yes
    sql: ${TABLE}.owner_id ;;
  }

  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

# Create Measures

  measure: average_mql_velocity {
    label: "Average MQL Velocity"
    type: average
    sql: ${mql_velocity} ;;
    filters: {
      field: mql_velocity
      value: ">0"
    }
    value_format_name: decimal_0
  }

  measure: average_opportunity_velocity {
    label: "Average Opportunity Velocity"
    type: average
    sql: ${converted_date}-${mql_date} ;;
    filters: {
      field: converted_opportunity_id
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

  measure: converted_to_contact_count {
    type: count
    filters: {
      field: converted_contact_id
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

  measure:  currently_active_leads_count{
    type: count
    filters: {
      field: last_interesting_moment_date
      value: "30 days"
    }
  }

  measure: days_mql_open{
    label: "Days MQL Open"
    type: average
    sql: current_timestamp-${mql_date} ;;
    filters: {
      field: mql_date
      value: "-null"
    }
    filters: {
      field: converted_opportunity_id
      value: "null"
    }
  }

  measure: net_mql_count {
    type: count
    filters: {
      field: mql_date
      value: "-null"
    }
  }

  measure: count {
    type: count
    drill_fields: [lead_id, status, campaign_members.count]
  }
}
