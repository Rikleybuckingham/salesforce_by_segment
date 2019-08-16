view: usage_company {
  sql_table_name: public.company ;;

  dimension: company_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.company_id ;;
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

  dimension: moid {
    type: string
    sql: ${TABLE}.moid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: report_timezone {
    type: number
    sql: ${TABLE}.report_timezone ;;
  }

  dimension: source_env {
    type: string
    sql: ${TABLE}.source_env ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [company_id, name, source_env]
  }
}