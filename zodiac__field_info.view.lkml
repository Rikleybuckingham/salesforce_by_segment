view: zodiac__field_info {
  sql_table_name: public.field_info ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: __deleted {
    type: yesno
    sql: ${TABLE}.__deleted ;;
  }

  dimension: access_type_id {
    type: number
    sql: ${TABLE}.access_type_id ;;
  }

  dimension: available_since {
    type: string
    sql: ${TABLE}.available_since ;;
  }

  dimension: data_type_id {
    type: number
    sql: ${TABLE}.data_type_id ;;
  }

  dimension: def_value {
    type: string
    sql: ${TABLE}.def_value ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: initially_locked {
    type: number
    sql: ${TABLE}.initially_locked ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: requires_restart {
    type: number
    sql: ${TABLE}.requires_restart ;;
  }

  dimension: rule_data {
    type: string
    sql: ${TABLE}.rule_data ;;
  }

  dimension: rule_id {
    type: number
    sql: ${TABLE}.rule_id ;;
  }

  dimension: source_env {
    type: string
    sql: ${TABLE}.source_env ;;
  }

  dimension: ui_exposable {
    type: number
    sql: ${TABLE}.ui_exposable ;;
  }

  dimension: ui_grouping_id {
    type: number
    sql: ${TABLE}.ui_grouping_id ;;
  }

  dimension: ui_lockable {
    type: number
    sql: ${TABLE}.ui_lockable ;;
  }

  dimension: ui_order {
    type: number
    sql: ${TABLE}.ui_order ;;
  }

  dimension: ui_title {
    type: string
    sql: ${TABLE}.ui_title ;;
  }

  dimension: ui_type_id {
    type: number
    sql: ${TABLE}.ui_type_id ;;
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

  dimension: version_id {
    type: number
    sql: ${TABLE}.version_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
