view: usage__map {
  sql_table_name: public.companies_salesforce_accounts ;;
  suggestions: no

# Create Filters

# Create Dimensions

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }

  dimension: dms {
    type: string
    sql: lower(${TABLE}.source_env) ;;
  }

  dimension: salesforce_id {
    type: string
    sql: ${TABLE}.salesforce_id ;;
  }

  dimension: composite_id {
    type: string
    sql: ${TABLE}.company_id || '-' || lower(${TABLE}.source_env) ;;
    hidden: yes
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
# Create Measures

  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
