view: accounts {
  sql_table_name: salesforce.accounts ;;

  dimension: ia_crm_sfdc_account_id_c {
    primary_key: yes
    type: string
    sql: ${TABLE}.ia_crm_sfdc_account_id_c ;;
  }

  dimension: abm_research_notes_c {
    type: string
    sql: ${TABLE}.abm_research_notes_c ;;
  }

  dimension_group: abm_sprint_start_date_c {
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
    sql: ${TABLE}.abm_sprint_start_date_c ;;
  }

  dimension: abm_tier_c {
    type: string
    sql: ${TABLE}.abm_tier_c ;;
  }

  dimension: account_name_email_c {
    type: string
    sql: ${TABLE}.account_name_email_c ;;
  }

  dimension: account_name_fortune_c {
    type: string
    sql: ${TABLE}.account_name_fortune_c ;;
  }

  dimension: account_nicknames_c {
    type: string
    sql: ${TABLE}.account_nicknames_c ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}.account_source ;;
  }

  dimension: active_customer_c {
    type: yesno
    sql: ${TABLE}.active_customer_c ;;
  }

  dimension: active_working_status_c {
    type: string
    sql: ${TABLE}.active_working_status_c ;;
  }

  dimension: activity_in_person_meeting_c {
    type: yesno
    sql: ${TABLE}.activity_in_person_meeting_c ;;
  }

  dimension: activity_reached_cxo_c {
    type: yesno
    sql: ${TABLE}.activity_reached_cxo_c ;;
  }

  dimension_group: adjusted_date_time_reported_c {
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
    sql: ${TABLE}.adjusted_date_time_reported_c ;;
  }

  dimension: admin_center_c {
    type: yesno
    sql: ${TABLE}.admin_center_c ;;
  }

  dimension_group: admin_center_go_live_date_c {
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
    sql: ${TABLE}.admin_center_go_live_date_c ;;
  }

  dimension: analytics_c {
    type: yesno
    sql: ${TABLE}.analytics_c ;;
  }

  dimension: annual_revenue {
    type: string
    sql: ${TABLE}.annual_revenue ;;
  }

  dimension: approach_priority_c {
    type: string
    sql: ${TABLE}.approach_priority_c ;;
  }

  dimension: arr_c {
    type: string
    sql: ${TABLE}.arr_c ;;
  }

  dimension: author_s_c {
    type: string
    sql: ${TABLE}.author_s_c ;;
  }

  dimension: awareness_of_stakeholders_c {
    type: string
    sql: ${TABLE}.awareness_of_stakeholders_c ;;
  }

  dimension: awareness_of_users_c {
    type: string
    sql: ${TABLE}.awareness_of_users_c ;;
  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}.billing_city ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}.billing_country ;;
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}.billing_postal_code ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}.billing_state ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}.billing_street ;;
  }

  dimension: browsers_used_c {
    type: string
    sql: ${TABLE}.browsers_used_c ;;
  }

  dimension: budget_for_video_production_delivery_c {
    type: string
    sql: ${TABLE}.budget_for_video_production_delivery_c ;;
  }

  dimension: chatter_c {
    type: yesno
    sql: ${TABLE}.chatter_c ;;
  }

  dimension_group: clientless_go_live_date_c {
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
    sql: ${TABLE}.clientless_go_live_date_c ;;
  }

  dimension: clientless_streaming_c {
    type: yesno
    sql: ${TABLE}.clientless_streaming_c ;;
  }

  dimension: contract_type_c {
    type: string
    sql: ${TABLE}.contract_type_c ;;
  }

  dimension: count_seats_c {
    type: yesno
    sql: ${TABLE}.count_seats_c ;;
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
      year
    ]
    sql: ${TABLE}.created_date ;;
  }

  dimension: created_opportunity_c {
    type: yesno
    sql: ${TABLE}.created_opportunity_c ;;
  }

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.currency_iso_code ;;
  }

  dimension: customer_experience_notes_c {
    type: string
    sql: ${TABLE}.customer_experience_notes_c ;;
  }

  dimension: customer_information_confluence_c {
    type: string
    sql: ${TABLE}.customer_information_confluence_c ;;
  }

  dimension: customer_progress_c {
    type: string
    sql: ${TABLE}.customer_progress_c ;;
  }

  dimension: customer_s_ideal_solution_c {
    type: string
    sql: ${TABLE}.customer_s_ideal_solution_c ;;
  }

  dimension: customer_success_rating_c {
    type: string
    sql: ${TABLE}.customer_success_rating_c ;;
  }

  dimension_group: customer_success_rating_status_date_c {
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
    sql: ${TABLE}.customer_success_rating_status_date_c ;;
  }

  dimension: customer_success_status_c {
    type: string
    sql: ${TABLE}.customer_success_status_c ;;
  }

  dimension: customers_current_use_cases_for_video_c {
    type: string
    sql: ${TABLE}.customers_current_use_cases_for_video_c ;;
  }

  dimension: d_u_n_s_c {
    type: string
    sql: ${TABLE}.d_u_n_s_c ;;
  }

  dimension_group: date_c {
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
    sql: ${TABLE}.date_c ;;
  }

  dimension_group: date_first_rev_cont_c {
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
    sql: ${TABLE}.date_first_rev_cont_c ;;
  }

  dimension_group: date_first_revenue_recognized_c {
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
    sql: ${TABLE}.date_first_revenue_recognized_c ;;
  }

  dimension_group: date_of_last_update_c {
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
    sql: ${TABLE}.date_of_last_update_c ;;
  }

  dimension: deferred_opportunity_c {
    type: yesno
    sql: ${TABLE}.deferred_opportunity_c ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: do_not_approach_c {
    type: string
    sql: ${TABLE}.do_not_approach_c ;;
  }

  dimension: do_you_have_challenges_patching_devices_c {
    type: string
    sql: ${TABLE}.do_you_have_challenges_patching_devices_c ;;
  }

  dimension: e_cdn_c {
    type: yesno
    sql: ${TABLE}.e_cdn_c ;;
  }

  dimension_group: e_cdn_go_live_c {
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
    sql: ${TABLE}.e_cdn_go_live_c ;;
  }

  dimension: employees_fortune_c {
    type: number
    sql: ${TABLE}.employees_fortune_c ;;
  }

  dimension: encoders_c {
    type: string
    sql: ${TABLE}.encoders_c ;;
  }

  dimension: endpoint_management_c {
    type: string
    sql: ${TABLE}.endpoint_management_c ;;
  }

  dimension: environment_c {
    type: string
    sql: ${TABLE}.environment_c ;;
  }

  dimension: executive_account_owner_c {
    type: string
    sql: ${TABLE}.executive_account_owner_c ;;
  }

  dimension: existing_video_solution_c {
    type: string
    sql: ${TABLE}.existing_video_solution_c ;;
  }

  dimension: existing_video_solution_notes_c {
    type: string
    sql: ${TABLE}.existing_video_solution_notes_c ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: features_used_c {
    type: string
    sql: ${TABLE}.features_used_c ;;
  }

  dimension: fortune_1000_rank_c {
    type: number
    sql: ${TABLE}.fortune_1000_rank_c ;;
  }

  dimension_group: go_live_date_c {
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
    sql: ${TABLE}.go_live_date_c ;;
  }

  dimension: happiness_level_measurement_c {
    type: string
    sql: ${TABLE}.happiness_level_measurement_c ;;
  }

  dimension: how_do_you_patch_end_points_at_the_edge_c {
    type: string
    sql: ${TABLE}.how_do_you_patch_end_points_at_the_edge_c ;;
  }

  dimension: how_high_in_the_org_are_we_connected_c {
    type: string
    sql: ${TABLE}.how_high_in_the_org_are_we_connected_c ;;
  }

  dimension: how_long_does_it_take_to_deploy_updates_c {
    type: string
    sql: ${TABLE}.how_long_does_it_take_to_deploy_updates_c ;;
  }

  dimension: how_many_dp_s_do_they_have_c {
    type: string
    sql: ${TABLE}.how_many_dp_s_do_they_have_c ;;
  }

  dimension: ia_crm_balance_c {
    type: string
    sql: ${TABLE}.ia_crm_balance_c ;;
  }

  dimension: ia_crm_corp_currency_balance_c {
    type: string
    sql: ${TABLE}.ia_crm_corp_currency_balance_c ;;
  }

  dimension: ia_crm_is_merged_c {
    type: yesno
    sql: ${TABLE}.ia_crm_is_merged_c ;;
  }

  dimension: ia_crm_sync_with_intacct_c {
    type: yesno
    sql: ${TABLE}.ia_crm_sync_with_intacct_c ;;
  }

  dimension: ia_crm_taxable_c {
    type: yesno
    sql: ${TABLE}.ia_crm_taxable_c ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: idp_used_c {
    type: string
    sql: ${TABLE}.idp_used_c ;;
  }

  dimension: indices_c {
    type: string
    sql: ${TABLE}.indices_c ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: industry_segment_c {
    type: string
    sql: ${TABLE}.industry_segment_c ;;
  }

  dimension: is_customer_portal {
    type: yesno
    sql: ${TABLE}.is_customer_portal ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_partner {
    type: yesno
    sql: ${TABLE}.is_partner ;;
  }

  dimension: konnector_c {
    type: yesno
    sql: ${TABLE}.konnector_c ;;
  }

  dimension: kontiki_account_id_c {
    type: string
    sql: ${TABLE}.kontiki_account_id_c ;;
  }

  dimension: kontiki_vendor_number_c {
    type: string
    sql: ${TABLE}.kontiki_vendor_number_c ;;
  }

  dimension: kproxy_c {
    type: yesno
    sql: ${TABLE}.kproxy_c ;;
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

  dimension_group: last_qbr_date_c {
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
    sql: ${TABLE}.last_qbr_date_c ;;
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

  dimension: legal_notice_c {
    type: string
    sql: ${TABLE}.legal_notice_c ;;
  }

  dimension: license_type_c {
    type: string
    sql: ${TABLE}.license_type_c ;;
  }

  dimension: live_c {
    type: yesno
    sql: ${TABLE}.live_c ;;
  }

  dimension_group: live_go_live_date_c {
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
    sql: ${TABLE}.live_go_live_date_c ;;
  }

  dimension: logo_on_kontiki_website_c {
    type: yesno
    sql: ${TABLE}.logo_on_kontiki_website_c ;;
  }

  dimension: lync_c {
    type: yesno
    sql: ${TABLE}.lync_c ;;
  }

  dimension: market_cap_c {
    type: number
    sql: ${TABLE}.market_cap_c ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}.master_record_id ;;
  }

  dimension_group: mc_go_live_date_c {
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
    sql: ${TABLE}.mc_go_live_date_c ;;
  }

  dimension_group: mc_live_go_live_date_c {
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
    sql: ${TABLE}.mc_live_go_live_date_c ;;
  }

  dimension: media_center_c {
    type: yesno
    sql: ${TABLE}.media_center_c ;;
  }

  dimension: media_center_live_streaming_c {
    type: yesno
    sql: ${TABLE}.media_center_live_streaming_c ;;
  }

  dimension: naics_code_c {
    type: string
    sql: ${TABLE}.naics_code_c ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: network_readiness_tester_c {
    type: yesno
    sql: ${TABLE}.network_readiness_tester_c ;;
  }

  dimension: nps_count_c {
    type: number
    sql: ${TABLE}.nps_count_c ;;
  }

  dimension: nps_detractor_count_c {
    type: number
    sql: ${TABLE}.nps_detractor_count_c ;;
  }

  dimension: nps_passive_count_c {
    type: number
    sql: ${TABLE}.nps_passive_count_c ;;
  }

  dimension: nps_promoter_count_c {
    type: number
    sql: ${TABLE}.nps_promoter_count_c ;;
  }

  dimension: number_of_accounts_c {
    type: number
    sql: ${TABLE}.number_of_accounts_c ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.number_of_employees ;;
  }

  dimension: open_to_working_with_consultants_c {
    type: string
    sql: ${TABLE}.open_to_working_with_consultants_c ;;
  }

  dimension: operating_systems_c {
    type: string
    sql: ${TABLE}.operating_systems_c ;;
  }

  dimension: owner_exception_c {
    type: yesno
    sql: ${TABLE}.owner_exception_c ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}.ownership ;;
  }

  dimension: p1_response_goal_hours_c {
    type: number
    sql: ${TABLE}.p1_response_goal_hours_c ;;
  }

  dimension: p2_response_goal_hours_c {
    type: number
    sql: ${TABLE}.p2_response_goal_hours_c ;;
  }

  dimension: p3_response_goal_hours_c {
    type: number
    sql: ${TABLE}.p3_response_goal_hours_c ;;
  }

  dimension: p4_response_goal_hours_c {
    type: number
    sql: ${TABLE}.p4_response_goal_hours_c ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}.parent_id ;;
  }

  dimension: partner_account_c {
    type: string
    sql: ${TABLE}.partner_account_c ;;
  }

  dimension: partner_target_account_c {
    type: string
    sql: ${TABLE}.partner_target_account_c ;;
  }

  dimension: permission_to_use_logo_c {
    type: string
    sql: ${TABLE}.permission_to_use_logo_c ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: phone_2_c {
    type: string
    sql: ${TABLE}.phone_2_c ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}.photo_url ;;
  }

  dimension: pipeline_account_status_c {
    type: string
    sql: ${TABLE}.pipeline_account_status_c ;;
  }

  dimension: portals_c {
    type: string
    sql: ${TABLE}.portals_c ;;
  }

  dimension: production_account_c {
    type: yesno
    sql: ${TABLE}.production_account_c ;;
  }

  dimension: progress_phone_or_web_meeting_c {
    type: yesno
    sql: ${TABLE}.progress_phone_or_web_meeting_c ;;
  }

  dimension: project_closed_c {
    type: string
    sql: ${TABLE}.project_closed_c ;;
  }

  dimension: proxy_used_c {
    type: string
    sql: ${TABLE}.proxy_used_c ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}.rating ;;
  }

  dimension: reason_rejected_or_deferred_c {
    type: string
    sql: ${TABLE}.reason_rejected_or_deferred_c ;;
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

  dimension: rejected_no_opportunity_c {
    type: yesno
    sql: ${TABLE}.rejected_no_opportunity_c ;;
  }

  dimension_group: renewal_date_c {
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
    sql: ${TABLE}.renewal_date_c ;;
  }

  dimension: renewal_manager_c {
    type: string
    sql: ${TABLE}.renewal_manager_c ;;
  }

  dimension: sales_director_c {
    type: string
    sql: ${TABLE}.sales_director_c ;;
  }

  dimension: sales_territory_c {
    type: string
    sql: ${TABLE}.sales_territory_c ;;
  }

  dimension: saml_c {
    type: yesno
    sql: ${TABLE}.saml_c ;;
  }

  dimension_group: saml_go_live_date_c {
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
    sql: ${TABLE}.saml_go_live_date_c ;;
  }

  dimension: sbqq_asset_quantities_combined_c {
    type: yesno
    sql: ${TABLE}.sbqq_asset_quantities_combined_c ;;
  }

  dimension: sbqq_co_termed_contracts_combined_c {
    type: yesno
    sql: ${TABLE}.sbqq_co_termed_contracts_combined_c ;;
  }

  dimension: sbqq_contract_co_termination_c {
    type: string
    sql: ${TABLE}.sbqq_contract_co_termination_c ;;
  }

  dimension: sbqq_ignore_parent_contracted_prices_c {
    type: yesno
    sql: ${TABLE}.sbqq_ignore_parent_contracted_prices_c ;;
  }

  dimension: sbqq_preserve_bundle_c {
    type: yesno
    sql: ${TABLE}.sbqq_preserve_bundle_c ;;
  }

  dimension: sbqq_renewal_model_c {
    type: string
    sql: ${TABLE}.sbqq_renewal_model_c ;;
  }

  dimension: sbqq_renewal_pricing_method_c {
    type: string
    sql: ${TABLE}.sbqq_renewal_pricing_method_c ;;
  }

  dimension: sbqq_tax_exempt_c {
    type: string
    sql: ${TABLE}.sbqq_tax_exempt_c ;;
  }

  dimension: seats_deployed_c {
    type: number
    sql: ${TABLE}.seats_deployed_c ;;
  }

  dimension: seats_licensed_c {
    type: number
    sql: ${TABLE}.seats_licensed_c ;;
  }

  dimension: seats_licensed_notes_c {
    type: string
    sql: ${TABLE}.seats_licensed_notes_c ;;
  }

  dimension: seats_potential_c {
    type: number
    sql: ${TABLE}.seats_potential_c ;;
  }

  dimension: segment_c {
    type: string
    sql: ${TABLE}.segment_c ;;
  }

  dimension: share_point_c {
    type: yesno
    sql: ${TABLE}.share_point_c ;;
  }

  dimension_group: share_point_go_live_date_c {
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
    sql: ${TABLE}.share_point_go_live_date_c ;;
  }

  dimension: share_point_used_c {
    type: string
    sql: ${TABLE}.share_point_used_c ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}.shipping_city ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}.shipping_country ;;
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}.shipping_postal_code ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}.shipping_state ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}.shipping_street ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}.sic ;;
  }

  dimension: smb_c {
    type: yesno
    sql: ${TABLE}.smb_c ;;
  }

  dimension: software_delivery_c {
    type: string
    sql: ${TABLE}.software_delivery_c ;;
  }

  dimension: software_delivery_notes_other_c {
    type: string
    sql: ${TABLE}.software_delivery_notes_other_c ;;
  }

  dimension: support_sla_c {
    type: string
    sql: ${TABLE}.support_sla_c ;;
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

  dimension: systems_management_c {
    type: string
    sql: ${TABLE}.systems_management_c ;;
  }

  dimension: tap_program_c {
    type: yesno
    sql: ${TABLE}.tap_program_c ;;
  }

  dimension: targeted_account_2009_c {
    type: yesno
    sql: ${TABLE}.targeted_account_2009_c ;;
  }

  dimension: targeted_account_2011_c {
    type: yesno
    sql: ${TABLE}.targeted_account_2011_c ;;
  }

  dimension: targeted_account_2012_c {
    type: yesno
    sql: ${TABLE}.targeted_account_2012_c ;;
  }

  dimension: targeted_account_qtr_c {
    type: string
    sql: ${TABLE}.targeted_account_qtr_c ;;
  }

  dimension: targeted_account_status_c {
    type: string
    sql: ${TABLE}.targeted_account_status_c ;;
  }

  dimension: technical_lead_c {
    type: string
    sql: ${TABLE}.technical_lead_c ;;
  }

  dimension: ticker_symbol {
    type: string
    sql: ${TABLE}.ticker_symbol ;;
  }

  dimension: title_c {
    type: string
    sql: ${TABLE}.title_c ;;
  }

  dimension: turnover_c {
    type: string
    sql: ${TABLE}.turnover_c ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: type_of_engagement_c {
    type: string
    sql: ${TABLE}.type_of_engagement_c ;;
  }

  dimension: url_c {
    type: string
    sql: ${TABLE}.url_c ;;
  }

  dimension: use_case_description_c {
    type: string
    sql: ${TABLE}.use_case_description_c ;;
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

  dimension_group: vc_go_live_date_c {
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
    sql: ${TABLE}.vc_go_live_date_c ;;
  }

  dimension: vdi_c {
    type: string
    sql: ${TABLE}.vdi_c ;;
  }

  dimension: video_activities_planned_w_in_6_months_c {
    type: string
    sql: ${TABLE}.video_activities_planned_w_in_6_months_c ;;
  }

  dimension: video_center_c {
    type: yesno
    sql: ${TABLE}.video_center_c ;;
  }

  dimension: video_conferencing_c {
    type: string
    sql: ${TABLE}.video_conferencing_c ;;
  }

  dimension: vpn_c {
    type: string
    sql: ${TABLE}.vpn_c ;;
  }

  dimension_group: wc_go_live_date_c {
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
    sql: ${TABLE}.wc_go_live_date_c ;;
  }

  dimension: webcaster_c {
    type: yesno
    sql: ${TABLE}.webcaster_c ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  dimension: what_challenges_maintaining_dp_s_c {
    type: string
    sql: ${TABLE}.what_challenges_maintaining_dp_s_c ;;
  }

  dimension: what_does_your_config_mgr_look_like_c {
    type: string
    sql: ${TABLE}.what_does_your_config_mgr_look_like_c ;;
  }

  dimension: what_is_our_visibility_in_the_org_c {
    type: string
    sql: ${TABLE}.what_is_our_visibility_in_the_org_c ;;
  }

  dimension: what_is_the_health_of_the_company_c {
    type: string
    sql: ${TABLE}.what_is_the_health_of_the_company_c ;;
  }

  dimension: what_problems_are_they_facing_c {
    type: string
    sql: ${TABLE}.what_problems_are_they_facing_c ;;
  }

  dimension: what_products_does_the_customer_have_c {
    type: string
    sql: ${TABLE}.what_products_does_the_customer_have_c ;;
  }

  dimension: what_tools_or_vendors_used_for_sd_c {
    type: string
    sql: ${TABLE}.what_tools_or_vendors_used_for_sd_c ;;
  }

  dimension: where_are_you_in_the_win_10_transition_c {
    type: string
    sql: ${TABLE}.where_are_you_in_the_win_10_transition_c ;;
  }

  dimension: who_should_we_be_talking_to_c {
    type: string
    sql: ${TABLE}.who_should_we_be_talking_to_c ;;
  }

  dimension: x3_rd_party_integrations_used_c {
    type: string
    sql: ${TABLE}.x3_rd_party_integrations_used_c ;;
  }

  dimension: zendesk_create_in_zendesk_c {
    type: yesno
    sql: ${TABLE}.zendesk_create_in_zendesk_c ;;
  }

  dimension: zendesk_created_updated_flag_c {
    type: yesno
    sql: ${TABLE}.zendesk_created_updated_flag_c ;;
  }

  dimension: zendesk_zendesk_outof_sync_c {
    type: yesno
    sql: ${TABLE}.zendesk_zendesk_outof_sync_c ;;
  }

  measure: count {
    type: count
    drill_fields: [
      name,
      environment_c,
      renewal_date_c_date,
      subscriptions.total_arr
      ]
  }
}
