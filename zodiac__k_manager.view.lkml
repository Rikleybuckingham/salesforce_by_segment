view: zodiac__k_manager {
  sql_table_name: public.k_manager ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: __deleted {
    type: yesno
    sql: ${TABLE}.__deleted ;;
  }

  dimension: bottom_bg_color {
    type: string
    sql: ${TABLE}.bottom_bg_color ;;
  }

  dimension: bottom_image {
    type: string
    sql: ${TABLE}.bottom_image ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }

  dimension: force_skin_id {
    type: number
    sql: ${TABLE}.force_skin_id ;;
  }

  dimension: identifier_suffix {
    type: string
    sql: ${TABLE}.identifier_suffix ;;
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

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: moid {
    type: string
    sql: ${TABLE}.moid ;;
  }

  dimension: skin_id {
    type: number
    sql: ${TABLE}.skin_id ;;
  }

  dimension: smd_urn {
    type: string
    sql: ${TABLE}.smd_urn ;;
  }

  dimension: source_env {
    type: string
    sql: ${TABLE}.source_env ;;
  }

  dimension: supported {
    type: number
    sql: ${TABLE}.supported ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: top_bg_color {
    type: string
    sql: ${TABLE}.top_bg_color ;;
  }

  dimension: top_image {
    type: string
    sql: ${TABLE}.top_image ;;
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
    drill_fields: [id]
  }
}
