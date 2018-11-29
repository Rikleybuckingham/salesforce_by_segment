view: usage__location {
  derived_table: {
    sql: select
          latitude,
          longitude,
          content_moid,
          type
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
       ;;
  }

  filter: company_id_filter {
    type: number
  }

  filter: content_moid_filter {
    type: string
  }

  filter: source_env_filter {
    type: string
  }

  filter: type_filter {
    type: number
  }

  measure: count {
    type: count
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

  set: detail {
    fields: [count, location]
  }
}
