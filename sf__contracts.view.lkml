view: sf__contracts {
  sql_table_name: salesforce.contracts ;;

  dimension: ia_crm_sfdc_contract_id_c {
    primary_key: yes
    type: string
    sql: ${TABLE}.ia_crm_sfdc_contract_id_c ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: activated_by_id {
    type: string
    sql: ${TABLE}.activated_by_id ;;
  }

  dimension_group: activated {
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
    sql: ${TABLE}.activated_date ;;
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

  dimension: contract_number {
    type: string
    sql: ${TABLE}.contract_number ;;
  }

  dimension: contract_term {
    type: number
    sql: ${TABLE}.contract_term ;;
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

  dimension: currency_iso_code {
    type: string
    sql: ${TABLE}.currency_iso_code ;;
  }

  dimension_group: customer_signed {
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
    sql: ${TABLE}.customer_signed_date ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: ia_crm_billing_frequency_c {
    type: string
    sql: ${TABLE}.ia_crm_billing_frequency_c ;;
  }

  dimension: ia_crm_intacct_contract_id_c {
    type: string
    sql: ${TABLE}.ia_crm_intacct_contract_id_c ;;
  }

  dimension: ia_crm_intacct_entity_c {
    type: string
    sql: ${TABLE}.ia_crm_intacct_entity_c ;;
  }

  dimension: ia_crm_intacct_entity_id_c {
    type: string
    sql: ${TABLE}.ia_crm_intacct_entity_id_c ;;
  }

  dimension: ia_crm_is_valid_for_sync_c {
    type: yesno
    sql: ${TABLE}.ia_crm_is_valid_for_sync_c ;;
  }

  dimension: ia_crm_is_valid_for_sync_status_c {
    type: string
    sql: ${TABLE}.ia_crm_is_valid_for_sync_status_c ;;
  }

  dimension: ia_crm_ready_to_sync_c {
    type: string
    sql: ${TABLE}.ia_crm_ready_to_sync_c ;;
  }

  dimension: ia_crm_renew_c {
    type: yesno
    sql: ${TABLE}.ia_crm_renew_c ;;
  }

  dimension: ia_crm_sfdc_account_id_c {
    type: string
    sql: ${TABLE}.ia_crm_sfdc_account_id_c ;;
  }

  dimension: ia_crm_sync_with_intacct_c {
    type: yesno
    sql: ${TABLE}.ia_crm_sync_with_intacct_c ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: owner_expiration_notice {
    type: string
    sql: ${TABLE}.owner_expiration_notice ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: pricebook_2_id {
    type: string
    sql: ${TABLE}.pricebook_2_id ;;
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

  dimension: sbqq_active_contract_c {
    type: number
    sql: ${TABLE}.sbqq_active_contract_c ;;
  }

  dimension: sbqq_amendment_renewal_behavior_c {
    type: string
    sql: ${TABLE}.sbqq_amendment_renewal_behavior_c ;;
  }

  dimension_group: sbqq_amendment_start_date_c {
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
    sql: ${TABLE}.sbqq_amendment_start_date_c ;;
  }

  dimension: sbqq_default_renewal_contact_roles_c {
    type: yesno
    sql: ${TABLE}.sbqq_default_renewal_contact_roles_c ;;
  }

  dimension: sbqq_default_renewal_partners_c {
    type: yesno
    sql: ${TABLE}.sbqq_default_renewal_partners_c ;;
  }

  dimension: sbqq_disable_amendment_co_term_c {
    type: yesno
    sql: ${TABLE}.sbqq_disable_amendment_co_term_c ;;
  }

  dimension: sbqq_evergreen_c {
    type: yesno
    sql: ${TABLE}.sbqq_evergreen_c ;;
  }

  dimension_group: sbqq_expiration_date_c {
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
    sql: ${TABLE}.sbqq_expiration_date_c ;;
  }

  dimension: sbqq_master_contract_c {
    type: yesno
    sql: ${TABLE}.sbqq_master_contract_c ;;
  }

  dimension: sbqq_opportunity_c {
    type: string
    sql: ${TABLE}.sbqq_opportunity_c ;;
  }

  dimension: sbqq_opportunity_pricebook_id_c {
    type: string
    sql: ${TABLE}.sbqq_opportunity_pricebook_id_c ;;
  }

  dimension: sbqq_preserve_bundle_structure_upon_renewals_c {
    type: yesno
    sql: ${TABLE}.sbqq_preserve_bundle_structure_upon_renewals_c ;;
  }

  dimension: sbqq_quote_c {
    type: string
    sql: ${TABLE}.sbqq_quote_c ;;
  }

  dimension: sbqq_renewal_forecast_c {
    type: yesno
    sql: ${TABLE}.sbqq_renewal_forecast_c ;;
  }

  dimension: sbqq_renewal_opportunity_c {
    type: string
    sql: ${TABLE}.sbqq_renewal_opportunity_c ;;
  }

  dimension: sbqq_renewal_quoted_c {
    type: yesno
    sql: ${TABLE}.sbqq_renewal_quoted_c ;;
  }

  dimension: sbqq_renewal_term_c {
    type: number
    sql: ${TABLE}.sbqq_renewal_term_c ;;
  }

  dimension: sbqq_subscription_quantities_combined_c {
    type: yesno
    sql: ${TABLE}.sbqq_subscription_quantities_combined_c ;;
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

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.status_code ;;
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

  dimension: type_c {
    type: string
    sql: ${TABLE}.type_c ;;
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

  measure: count {
    type: count
    drill_fields: [ia_crm_sfdc_contract_id_c, name]
  }
}
