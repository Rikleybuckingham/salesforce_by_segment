view: sfbase__accounts {
  sql_table_name: salesforce.accounts ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date ;;
  }

  dimension: external_id_c {
    type: string
    sql: ${TABLE}.external_id_c ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.last_modified_by_id ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_referenced_date ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_viewed_date ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: plan_c {
    type: string
    sql: ${TABLE}.plan_c ;;
  }

  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.system_modstamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_hidden {
    type: string
    sql: ${TABLE}.name ;;
    link: {
      label: "Company Insights"
      url: "company_usage::company_details?company={{ content_moid._value | url_encode }}"
    }
    hidden: yes
  }

  dimension: annual_recurring_revenue {
    type: number
    sql: ${TABLE}.arr_c ;;
  }

  dimension: seats_licensed {
    type: number
    sql: ${TABLE}.seats_licensed_c ;;
  }

  dimension: renewal_date {
    type: date
    sql: ${TABLE}.renewal_date_c ;;
  }

  dimension: webcaster {
    case:{
      when:{
        sql: ${TABLE}.webcaster_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.webcaster_c= false ;;
        label: "No"
      }
    }
  }

  dimension: video_center {
    case:{
      when:{
        sql: ${TABLE}.video_center_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.video_center_c= false ;;
        label: "No"
      }
    }
  }

  dimension: admin_center {
    case:{
      when:{
        sql: ${TABLE}.admin_center_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.admin_center_c= false ;;
        label: "No"
      }
    }
  }

  dimension: clientless_streaming {
    case:{
      when:{
        sql: ${TABLE}.clientless_streaming_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.clientless_streaming_c= false ;;
        label: "No"
      }
    }
  }

  dimension: ecdn {
    case:{
      when:{
        sql: ${TABLE}.e_cdn_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.e_cdn_c= false ;;
        label: "No"
      }
    }
  }

  dimension: live {
    case:{
      when:{
        sql: ${TABLE}.live_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.live_c= false ;;
        label: "No"
      }
    }
  }

  dimension: media_center {
    case:{
      when:{
        sql: ${TABLE}.media_center_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.media_center_c= false ;;
        label: "No"
      }
    }
  }

  dimension: media_center_live_streaming {
    case:{
      when:{
        sql: ${TABLE}.media_center_live_streaming_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.media_center_live_streaming_c= false ;;
        label: "No"
      }
    }
  }

  dimension: network_readiness_tester {
    case:{
      when:{
        sql: ${TABLE}.network_readiness_tester_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.network_readiness_tester_c= false ;;
        label: "No"
      }
    }
  }

  dimension: saml {
    case:{
      when:{
        sql: ${TABLE}.saml_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.saml_c= false ;;
        label: "No"
      }
    }
  }

  dimension: share_point {
    case:{
      when:{
        sql: ${TABLE}.share_point_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.share_point_c= false ;;
        label: "No"
      }
    }
  }

  dimension: skype_meeting_broadcast {
    case:{
      when:{
        sql: ${TABLE}.smb_c = true;;
        label: "Yes"
      }
      when: {
        sql: ${TABLE}.smb_c= false ;;
        label: "No"
      }
    }
  }

  measure: count {
    type: count
    drill_fields: [id, events.count, opportunities.count, tasks.count]
  }
}
