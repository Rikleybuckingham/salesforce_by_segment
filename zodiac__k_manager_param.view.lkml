view: zodiac__k_manager_param {
  sql_table_name: public.k_manager_param ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: __deleted {
    type: yesno
    sql: ${TABLE}.__deleted ;;
  }

  dimension: field_info_id {
    type: number
    sql: ${TABLE}.field_info_id ;;
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

  dimension: k_manager_id {
    type: number
    sql: ${TABLE}.k_manager_id ;;
  }

  dimension: locked {
    type: number
    sql: ${TABLE}.locked ;;
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

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
