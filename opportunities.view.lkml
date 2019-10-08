view: opportunities {
  sql_table_name: salesforce.opportunities ;;

  dimension: ia_crm_sfdc_opportunity_id_c {
    primary_key: yes
    type: string
    sql: ${TABLE}.ia_crm_sfdc_opportunity_id_c ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: acquisition_program_c {
    type: string
    sql: ${TABLE}.acquisition_program_c ;;
  }

  dimension_group: ae_handoff_date_c {
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
    sql: ${TABLE}.ae_handoff_date_c ;;
  }

  dimension: ae_owner_c {
    type: string
    sql: ${TABLE}.ae_owner_c ;;
  }

  dimension: ae_owner_id_c {
    type: string
    sql: ${TABLE}.ae_owner_id_c ;;
  }

  dimension: ae_stage_c {
    type: string
    sql: ${TABLE}.ae_stage_c ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_gross_c {
    type: string
    sql: ${TABLE}.amount_gross_c ;;
  }

  dimension: amount_thousands_c {
    type: number
    sql: ${TABLE}.amount_thousands_c ;;
  }

  dimension_group: anniversary_date_c {
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
    sql: ${TABLE}.anniversary_date_c ;;
  }

  dimension: annual_contract_value_c {
    type: string
    sql: ${TABLE}.annual_contract_value_c ;;
  }

  dimension: arr_forecast {
    type: number
    sql: ${bookings_value_usd}-${total_non_recurring_amount_usd} ;;
    value_format_name: usd_0
  }

  dimension: bookings_value_c {
    type: number
    sql: ${TABLE}.bookings_value_c::float ;;
  }

  dimension: bookings_value_usd {
    type: number
    sql:
      case
      when ${currency_iso_code} = 'EUR' then (${bookings_value_c}::float)*1.09
      when ${currency_iso_code} = 'GBR' then (${bookings_value_c}::float)*1.23
      when ${currency_iso_code} = 'JPY' then (${bookings_value_c}::float)*0.0092
      else ${bookings_value_c}::float
      end ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: channel_partner_c {
    type: string
    sql: ${TABLE}.channel_partner_c ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}.close_date ;;
  }

  dimension_group: closed_lost_date_c {
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
    sql: ${TABLE}.closed_lost_date_c ;;
  }

  dimension: company_url_c {
    type: string
    sql: ${TABLE}.company_url_c ;;
  }

  dimension: competitors_c {
    type: string
    sql: ${TABLE}.competitors_c ;;
  }

  dimension: contact_required_c {
    type: number
    sql: ${TABLE}.contact_required_c ;;
  }

  dimension: context_of_the_deal_to_date_c {
    type: string
    sql: ${TABLE}.context_of_the_deal_to_date_c ;;
  }

  dimension: contract_id {
    type: string
    sql: ${TABLE}.contract_id ;;
  }

  dimension: contract_term_months_c_c {
    type: number
    sql: ${TABLE}.contract_term_months_c_c ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.created_by_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      fiscal_quarter,
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.currency_iso_code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: end_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      fiscal_quarter,
      year
    ]
    sql: ${TABLE}.end_date_c ;;
  }

  dimension: expected_revenue {
    type: string
    sql: ${TABLE}.expected_revenue ;;
  }

  dimension: expected_revenue_c {
    type: string
    sql: ${TABLE}.expected_revenue_c ;;
  }

  dimension: fiscal {
    type: string
    sql: ${TABLE}.fiscal ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}.fiscal_quarter ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}.fiscal_year ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.forecast_category ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}.forecast_category_name ;;
  }

  dimension: geography_c {
    type: string
    sql: ${TABLE}.geography_c ;;
  }

  dimension: has_open_activity {
    type: yesno
    sql: ${TABLE}.has_open_activity ;;
  }

  dimension: has_opportunity_line_item {
    type: yesno
    sql: ${TABLE}.has_opportunity_line_item ;;
  }

  dimension: has_overdue_task {
    type: yesno
    sql: ${TABLE}.has_overdue_task ;;
  }

  dimension: ia_crm_bill_to_account_c {
    type: string
    sql: ${TABLE}.ia_crm_bill_to_account_c ;;
  }

  dimension: ia_crm_billing_type_c {
    type: string
    sql: ${TABLE}.ia_crm_billing_type_c ;;
  }

  dimension: ia_crm_change_type_c {
    type: string
    sql: ${TABLE}.ia_crm_change_type_c ;;
  }

  dimension: ia_crm_contract_validation_c {
    type: string
    sql: ${TABLE}.ia_crm_contract_validation_c ;;
  }

  dimension: ia_crm_contract_validation_missing_fields_c {
    type: string
    sql: ${TABLE}.ia_crm_contract_validation_missing_fields_c ;;
  }

  dimension_group: ia_crm_end_date_c {
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
    sql: ${TABLE}.ia_crm_end_date_c ;;
  }

  dimension: ia_crm_is_contract_renewed_c {
    type: yesno
    sql: ${TABLE}.ia_crm_is_contract_renewed_c ;;
  }

  dimension: ia_crm_renew_c {
    type: yesno
    sql: ${TABLE}.ia_crm_renew_c ;;
  }

  dimension: ia_crm_sfdc_account_id_c {
    type: string
    sql: ${TABLE}.ia_crm_sfdc_account_id_c ;;
  }

  dimension: ia_crm_sfdc_contract_id_c {
    type: string
    sql: ${TABLE}.ia_crm_sfdc_contract_id_c ;;
  }

  dimension_group: ia_crm_start_date_c {
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
    sql: ${TABLE}.ia_crm_start_date_c ;;
  }

  dimension: ia_crm_term_c {
    type: string
    sql: ${TABLE}.ia_crm_term_c ;;
  }

  dimension: ia_crm_validation_errors_c {
    type: string
    sql: ${TABLE}.ia_crm_validation_errors_c ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: if_video_what_front_end_tool_is_this_for_c {
    type: string
    sql: ${TABLE}.if_video_what_front_end_tool_is_this_for_c ;;
  }

  dimension: integrations_partner_c {
    type: string
    sql: ${TABLE}.integrations_partner_c ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}.is_closed ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_lost {
    type: yesno
    sql: ${is_closed} AND NOT ${is_won} ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}.is_won ;;
  }

  dimension: isr_owner_c {
    type: string
    sql: ${TABLE}.isr_owner_c ;;
  }

  dimension: kontiki_oppy_id_c {
    type: string
    sql: ${TABLE}.kontiki_oppy_id_c ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}.last_activity_date ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.last_modified_by_id ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension_group: last_referenced {
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
    sql: ${TABLE}.last_referenced_date ;;
  }

  dimension_group: last_viewed {
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
    sql: ${TABLE}.last_viewed_date ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.lead_source ;;
  }

  dimension: lead_source_detail_c {
    type: string
    sql: ${TABLE}.lead_source_detail_c ;;
  }

  dimension: license_type_c {
    type: string
    sql: ${TABLE}.license_type_c ;;
  }

  dimension: market_segment_c {
    type: string
    sql: ${TABLE}.market_segment_c ;;
  }

  dimension: microsoft_involved_c {
    type: yesno
    sql: ${TABLE}.microsoft_involved_c ;;
  }

  dimension: mkto_si_marketo_analyzer_c {
    type: string
    sql: ${TABLE}.mkto_si_marketo_analyzer_c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: network_readiness_tester_c {
    type: yesno
    sql: ${TABLE}.network_readiness_tester_c ;;
  }

  dimension_group: next_meeting_c {
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
    sql: ${TABLE}.next_meeting_c ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}.next_step ;;
  }

  dimension: number_of_contacts_roles_assigned_c {
    type: number
    sql: ${TABLE}.number_of_contacts_roles_assigned_c ;;
  }

  dimension: number_of_opps_c {
    type: number
    sql: ${TABLE}.number_of_opps_c ;;
  }

  dimension: number_of_users_c {
    type: number
    sql: ${TABLE}.number_of_users_c ;;
  }

  dimension: opp_contact_c {
    type: string
    sql: ${TABLE}.opp_contact_c ;;
  }

  dimension: opportunity_notes_c {
    type: string
    sql: ${TABLE}.opportunity_notes_c ;;
  }

  dimension: opportunity_owner_previous_c {
    type: string
    sql: ${TABLE}.opportunity_owner_previous_c ;;
  }

  dimension: owner_exception_c {
    type: yesno
    sql: ${TABLE}.owner_exception_c ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: payment_type_c {
    type: string
    sql: ${TABLE}.payment_type_c ;;
  }

  dimension_group: pipeline_date_c {
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
    sql: ${TABLE}.pipeline_date_c ;;
  }

  dimension: po_number_c {
    type: string
    sql: ${TABLE}.po_number_c ;;
  }

  dimension: po_required_for_future_years_c {
    type: string
    sql: ${TABLE}.po_required_for_future_years_c ;;
  }

  dimension: poc_c {
    type: yesno
    sql: ${TABLE}.poc_c ;;
  }

  dimension: pre_2015_c {
    type: yesno
    sql: ${TABLE}.pre_2015_c ;;
  }

  dimension: pricebook_2_id {
    type: string
    sql: ${TABLE}.pricebook_2_id ;;
  }

  dimension: primary_contact_assigned_c {
    type: yesno
    sql: ${TABLE}.primary_contact_assigned_c ;;
  }

  dimension: primary_interest_c {
    type: string
    sql: ${TABLE}.primary_interest_c ;;
  }

  dimension: probability {
    type: string
    sql: ${TABLE}.probability ;;
  }

  dimension: proposed_services_c {
    type: string
    sql: ${TABLE}.proposed_services_c ;;
  }

  dimension: reason_for_loss_c {
    type: string
    sql: ${TABLE}.reason_for_loss_c ;;
  }

  dimension: reason_for_loss_notes_c {
    type: string
    sql: ${TABLE}.reason_for_loss_notes_c ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.received_at ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.record_type_id ;;
  }

  dimension: recurring_c {
    type: string
    sql: ${TABLE}.recurring_c ;;
  }

  dimension: referral_from_c {
    type: string
    sql: ${TABLE}.referral_from_c ;;
  }

  dimension: referral_partner_c {
    type: string
    sql: ${TABLE}.referral_partner_c ;;
  }

  dimension: renewal_requirements_c {
    type: string
    sql: ${TABLE}.renewal_requirements_c ;;
  }

  dimension: reseller_discount_c {
    type: string
    sql: ${TABLE}.reseller_discount_c ;;
  }

  dimension: reseller_rep_c {
    type: string
    sql: ${TABLE}.reseller_rep_c ;;
  }

  dimension: reseller_rep_ii_c {
    type: string
    sql: ${TABLE}.reseller_rep_ii_c ;;
  }

  dimension: sbqq_amended_contract_c {
    type: string
    sql: ${TABLE}.sbqq_amended_contract_c ;;
  }

  dimension: sbqq_contracted_c {
    type: yesno
    sql: ${TABLE}.sbqq_contracted_c ;;
  }

  dimension: sbqq_create_contracted_prices_c {
    type: yesno
    sql: ${TABLE}.sbqq_create_contracted_prices_c ;;
  }

  dimension: sbqq_ordered_c {
    type: yesno
    sql: ${TABLE}.sbqq_ordered_c ;;
  }

  dimension: sbqq_primary_quote_c {
    type: string
    sql: ${TABLE}.sbqq_primary_quote_c ;;
  }

  dimension: sbqq_quote_pricebook_id_c {
    type: string
    sql: ${TABLE}.sbqq_quote_pricebook_id_c ;;
  }

  dimension: sbqq_renewal_c {
    type: yesno
    sql: ${TABLE}.sbqq_renewal_c ;;
  }

  dimension: sbqq_renewed_contract_c {
    type: string
    sql: ${TABLE}.sbqq_renewed_contract_c ;;
  }

  dimension: se_assigned_c {
    type: string
    sql: ${TABLE}.se_assigned_c ;;
  }

  dimension: se_technical_certification_c {
    type: yesno
    sql: ${TABLE}.se_technical_certification_c ;;
  }

  dimension: server_appliance_c {
    type: yesno
    sql: ${TABLE}.server_appliance_c ;;
  }

  dimension: service_hosting_c {
    type: yesno
    sql: ${TABLE}.service_hosting_c ;;
  }

  dimension: service_live_c {
    type: yesno
    sql: ${TABLE}.service_live_c ;;
  }

  dimension: service_m_s_services_c {
    type: yesno
    sql: ${TABLE}.service_m_s_services_c ;;
  }

  dimension: service_mobile_c {
    type: yesno
    sql: ${TABLE}.service_mobile_c ;;
  }

  dimension: service_pilot_c {
    type: yesno
    sql: ${TABLE}.service_pilot_c ;;
  }

  dimension: service_saa_s_c {
    type: yesno
    sql: ${TABLE}.service_saa_s_c ;;
  }

  dimension: service_setup_c {
    type: yesno
    sql: ${TABLE}.service_setup_c ;;
  }

  dimension: service_usage_c {
    type: yesno
    sql: ${TABLE}.service_usage_c ;;
  }

  dimension: service_video_center_c {
    type: yesno
    sql: ${TABLE}.service_video_center_c ;;
  }

  dimension: service_vod_c {
    type: yesno
    sql: ${TABLE}.service_vod_c ;;
  }

  dimension_group: services_end_date_c {
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
    sql: ${TABLE}.services_end_date_c ;;
  }

  dimension_group: services_start_date_c {
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
    sql: ${TABLE}.services_start_date_c ;;
  }

  dimension: set_up_amount_c {
    type: number
    sql: ${TABLE}.set_up_amount_c ;;
  }

  dimension: software_delivery_opportunity_c {
    type: yesno
    sql: ${TABLE}.software_delivery_opportunity_c ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.stage_name ;;
  }

  dimension_group: start_date_c {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      fiscal_quarter,
      year
    ]
    sql: ${TABLE}.start_date_c ;;
  }

  dimension: storage_tb_c {
    type: string
    sql: ${TABLE}.storage_tb_c ;;
  }

  dimension: streaming_tb_c {
    type: string
    sql: ${TABLE}.streaming_tb_c ;;
  }

  dimension: subscription_amount_c {
    type: number
    sql: ${TABLE}.subscription_amount_c ;;
  }

  dimension_group: system_modstamp {
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
    sql: ${TABLE}.system_modstamp ;;
  }

  dimension: total_amount_c {
    type: number
    sql: ${TABLE}.total_amount_c ;;
  }

  dimension: total_non_recurring_amount_c {
    type: number
    sql: ${TABLE}.total_non_recurring_amount_c::float ;;
  }

  dimension: total_non_recurring_amount_usd {
    type: number
    sql:
      case
      when ${currency_iso_code} = 'EUR' then (${total_non_recurring_amount_c}::float)*1.09
      when ${currency_iso_code} = 'GBR' then (${total_non_recurring_amount_c}::float)*1.23
      when ${currency_iso_code} = 'JPY' then (${total_non_recurring_amount_c}::float)*0.0092
      else ${total_non_recurring_amount_c}::float
      end ;;
  }

  dimension: total_recurring_amount_c {
    type: number
    sql: ${TABLE}.total_recurring_amount_c ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_of_revenue_stream_c {
    type: string
    sql: ${TABLE}.type_of_revenue_stream_c ;;
  }

  dimension_group: uuid_ts {
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
    sql: ${TABLE}.uuid_ts ;;
  }

  dimension: video_opportunity_c {
    type: yesno
    sql: ${TABLE}.video_opportunity_c ;;
  }

  dimension: weekly_booking_review_progress_c {
    type: string
    sql: ${TABLE}.weekly_booking_review_progress_c ;;
  }

  dimension: weekly_booking_review_track_c {
    type: yesno
    sql: ${TABLE}.weekly_booking_review_track_c ;;
  }

  dimension: what_is_the_ask_from_microsoft_c {
    type: string
    sql: ${TABLE}.what_is_the_ask_from_microsoft_c ;;
  }

  measure: bookings_value_sum {
    type: sum
    sql: ${bookings_value_c}::float ;;
  }

  measure: count {
    type: count
    drill_fields: [ia_crm_sfdc_opportunity_id_c, stage_name, name, forecast_category_name]
  }

  measure: arr_forecast_sum {
    type: sum
    sql: ${arr_forecast} ;;
    value_format_name: usd_0
    drill_fields: [name, geography_c, stage_name, created_date, close_date, arr_forecast]
  }

  measure: lost_renewal_sum {
    type: sum
    sql: ${total_recurring_amount_c}::float ;;
    filters: {
      field: is_lost
      value: "Yes"
    }
    filters: {
      field: type
      value: "Renewal"
    }
  }
}
