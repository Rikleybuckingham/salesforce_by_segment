view: sf__account {
  sql_table_name: salesforce.accounts ;;

# Create Filters

  filter: account_id_filter {
    type: string
    sql: replace({% parameter account_id_filter %}, '-', '') = ${id} ;;
  }

# Create Dimensions

  dimension: account_name_link { # This is used if you want to click the account name to go to Company Insights Dashboard
    type: string
    sql: ${TABLE}.name ;;
    hidden: no
    link: {
      label: "Company Insights Dashboard"
      url: "salesforce/company_insights?account_id_filter={{ id._value | url_encode}}"
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

  dimension: annual_recurring_revenue {
    type: number
    sql: ${TABLE}.arr_c ;;
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

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date ;;
  }

  dimension: dms {
    type: string
    sql: ${TABLE}.environment_c ;;
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

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.last_modified_by_id ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension_group: received {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.received_at ;;
  }

  dimension: renewal_date {
    type: date
    sql: ${TABLE}.renewal_date_c ;;
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

  dimension: seats_licensed {
    type: number
    sql: ${TABLE}.seats_licensed_c ;;
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

  dimension_group: system_modstamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.system_modstamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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

# Create Measures

  measure: count {
    type: count
  }
}