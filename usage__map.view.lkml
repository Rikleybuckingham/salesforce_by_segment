view: usage__map {
  sql_table_name: public.company_id_map ;;
  suggestions: no

# Create Filters

# Create Dimensions

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: dms {
    type: string
    sql: ${TABLE}.dms ;;
  }

  dimension: salesforce_id {
    type: string
    sql: ${TABLE}.salesforce_id ;;
  }

  dimension: composite_id {
    type: string
    sql: ${TABLE}.company_id || '-' || lower(${TABLE}.dms) ;;
    hidden: yes
  }

# Create Measures

  measure: count {
    type: count
    drill_fields: [company_name]
  }
}
