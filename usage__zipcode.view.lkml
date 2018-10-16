view: usage__zipcode {
  derived_table: {
    sql: select
          get_postal_code_for_ip (d.external_ip) as zipcode,
          d.delivery_count
      from (
          select
              delivery.external_ip as external_ip,
              count(*) as delivery_count
          from
              delivery
          where
              delivery.content_moid = '9a42ff78-6628-4946-86f6-ce3c57381d34'
          group by
              1
          order by
              delivery_count desc) as d
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  dimension: delivery_count {
    type: number
    sql: ${TABLE}.delivery_count ;;
  }

  set: detail {
    fields: [zipcode, delivery_count]
  }
}
