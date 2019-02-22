view: usage__location {
  derived_table: {
    sql: select
          content_title,
          latitude,
          longitude,
          content_moid,
          type,
          source_env,
          start_time,
          total_bytes,
          peer_bytes,
          origin_bytes
      from
          delivery, lateral (
              select
                  latitude,
                  longitude
              from
                  geoip.city_blocks_ipv4
              where
                  delivery.external_ip::ip4 <<= network) as geo
                where
                 {% condition content_moid_filter %} delivery.content_moid {% endcondition %}
                and {% condition company_id_filter %} delivery.company_id {% endcondition %}
                and {% condition source_env_filter %} delivery.source_env {% endcondition %}
                and {% condition type_filter %} delivery.type {% endcondition %}
                and {% condition date_filter %} delivery.start_time {% endcondition %}
                and {% condition title_filter %} delivery.content_title {% endcondition %}
       ;;
  }

  filter: company_id_filter {
    type: number
  }

  filter: date_filter {
    type: date_time
  }

  filter: content_moid_filter {
    type: string
  }

  filter: source_env_filter {
    type: string
  }

  filter: title_filter {
    type: string
  }

  filter: type_filter {
    type: number
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: gb_sum {
    type: sum
    sql: ${TABLE}.total_bytes / 1e9 ;;
    value_format_name: decimal_2
    drill_fields: [detail*]
  }

  measure: origin_gb_sum {
    type: sum
    sql: ${TABLE}.origin_bytes / 1e9 ;;
  }

  measure: peer_gb_sum {
    type: sum
    sql: ${TABLE}.peer_bytes / 1e9 ;;
  }

  measure: peering {
    type: number
    sql: CASE WHEN ${gb_sum} != 0 THEN ${peer_gb_sum} / ${gb_sum} else ${gb_sum} END;;
    value_format_name: percent_2
    drill_fields: [detail*]
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: content_moid {
    type: string
    sql: ${TABLE}.content_moid ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.content_title ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: dms {
    type: string
    sql: ${TABLE}.source_env ;;
  }

  dimension: origin_bytes{
    type: number
    sql: ${TABLE}.origin_bytes ;;
  }

  dimension: peer_bytes {
    type: number
    sql: ${TABLE}.peer_bytes ;;
  }

  dimension: total_bytes {
    type: number
    sql: ${TABLE}.total_bytes ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  set: detail {
    fields: [location, title, count, peer_gb_sum, origin_gb_sum, peering]
  }
}
