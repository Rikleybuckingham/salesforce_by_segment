view: sf__products {
  sql_table_name: salesforce.products ;;

  dimension: product_id_c {
    primary_key: yes
    type: string
    sql: ${TABLE}.product_id_c ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: exclude_from_term_upcharge_c {
    type: yesno
    sql: ${TABLE}.exclude_from_term_upcharge_c ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  dimension: ia_crm_cost_method_c {
    type: string
    sql: ${TABLE}.ia_crm_cost_method_c ;;
  }

  dimension: ia_crm_description_on_sales_transactions_c {
    type: string
    sql: ${TABLE}.ia_crm_description_on_sales_transactions_c ;;
  }

  dimension: ia_crm_intacct_sync_errors_c {
    type: string
    sql: ${TABLE}.ia_crm_intacct_sync_errors_c ;;
  }

  dimension: ia_crm_intacct_sync_status_c {
    type: string
    sql: ${TABLE}.ia_crm_intacct_sync_status_c ;;
  }

  dimension: ia_crm_intacct_sync_status_image_c {
    type: string
    sql: ${TABLE}.ia_crm_intacct_sync_status_image_c ;;
  }

  dimension: ia_crm_item_gl_group_c {
    type: string
    sql: ${TABLE}.ia_crm_item_gl_group_c ;;
  }

  dimension: ia_crm_item_type_c {
    type: string
    sql: ${TABLE}.ia_crm_item_type_c ;;
  }

  dimension: ia_crm_mrr_c {
    type: yesno
    sql: ${TABLE}.ia_crm_mrr_c ;;
  }

  dimension: ia_crm_sfdc_product_id_c {
    type: string
    sql: ${TABLE}.ia_crm_sfdc_product_id_c ;;
  }

  dimension: ia_crm_standard_cost_c {
    type: number
    sql: ${TABLE}.ia_crm_standard_cost_c ;;
  }

  dimension: ia_crm_sync_with_intacct_c {
    type: yesno
    sql: ${TABLE}.ia_crm_sync_with_intacct_c ;;
  }

  dimension: ia_crm_taxable_c {
    type: yesno
    sql: ${TABLE}.ia_crm_taxable_c ;;
  }

  dimension: ia_crm_unit_of_measure_c {
    type: string
    sql: ${TABLE}.ia_crm_unit_of_measure_c ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
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

  dimension: product_code {
    type: string
    sql: ${TABLE}.product_code ;;
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

  dimension: recurring_c {
    type: yesno
    sql: ${TABLE}.recurring_c ;;
  }

  dimension: sbcf_intacct_only_c {
    type: yesno
    sql: ${TABLE}.sbcf_intacct_only_c ;;
  }

  dimension: sbcf_recurring_c {
    type: yesno
    sql: ${TABLE}.sbcf_recurring_c ;;
  }

  dimension: sbcf_renew_c {
    type: yesno
    sql: ${TABLE}.sbcf_renew_c ;;
  }

  dimension: sbcf_roll_up_price_c {
    type: yesno
    sql: ${TABLE}.sbcf_roll_up_price_c ;;
  }

  dimension: sbqq_asset_amendment_behavior_c {
    type: string
    sql: ${TABLE}.sbqq_asset_amendment_behavior_c ;;
  }

  dimension: sbqq_asset_conversion_c {
    type: string
    sql: ${TABLE}.sbqq_asset_conversion_c ;;
  }

  dimension: sbqq_block_pricing_field_c {
    type: string
    sql: ${TABLE}.sbqq_block_pricing_field_c ;;
  }

  dimension: sbqq_component_c {
    type: yesno
    sql: ${TABLE}.sbqq_component_c ;;
  }

  dimension: sbqq_configuration_event_c {
    type: string
    sql: ${TABLE}.sbqq_configuration_event_c ;;
  }

  dimension: sbqq_configuration_type_c {
    type: string
    sql: ${TABLE}.sbqq_configuration_type_c ;;
  }

  dimension: sbqq_cost_editable_c {
    type: yesno
    sql: ${TABLE}.sbqq_cost_editable_c ;;
  }

  dimension: sbqq_custom_configuration_required_c {
    type: yesno
    sql: ${TABLE}.sbqq_custom_configuration_required_c ;;
  }

  dimension: sbqq_default_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_default_quantity_c ;;
  }

  dimension: sbqq_description_locked_c {
    type: yesno
    sql: ${TABLE}.sbqq_description_locked_c ;;
  }

  dimension: sbqq_discount_schedule_c {
    type: string
    sql: ${TABLE}.sbqq_discount_schedule_c ;;
  }

  dimension: sbqq_exclude_from_maintenance_c {
    type: yesno
    sql: ${TABLE}.sbqq_exclude_from_maintenance_c ;;
  }

  dimension: sbqq_exclude_from_opportunity_c {
    type: yesno
    sql: ${TABLE}.sbqq_exclude_from_opportunity_c ;;
  }

  dimension: sbqq_externally_configurable_c {
    type: yesno
    sql: ${TABLE}.sbqq_externally_configurable_c ;;
  }

  dimension: sbqq_has_configuration_attributes_c {
    type: yesno
    sql: ${TABLE}.sbqq_has_configuration_attributes_c ;;
  }

  dimension: sbqq_hidden_c {
    type: yesno
    sql: ${TABLE}.sbqq_hidden_c ;;
  }

  dimension: sbqq_hide_price_in_search_results_c {
    type: yesno
    sql: ${TABLE}.sbqq_hide_price_in_search_results_c ;;
  }

  dimension: sbqq_include_in_maintenance_c {
    type: yesno
    sql: ${TABLE}.sbqq_include_in_maintenance_c ;;
  }

  dimension: sbqq_new_quote_group_c {
    type: yesno
    sql: ${TABLE}.sbqq_new_quote_group_c ;;
  }

  dimension: sbqq_non_discountable_c {
    type: yesno
    sql: ${TABLE}.sbqq_non_discountable_c ;;
  }

  dimension: sbqq_non_partner_discountable_c {
    type: yesno
    sql: ${TABLE}.sbqq_non_partner_discountable_c ;;
  }

  dimension: sbqq_option_layout_c {
    type: string
    sql: ${TABLE}.sbqq_option_layout_c ;;
  }

  dimension: sbqq_option_selection_method_c {
    type: string
    sql: ${TABLE}.sbqq_option_selection_method_c ;;
  }

  dimension: sbqq_optional_c {
    type: yesno
    sql: ${TABLE}.sbqq_optional_c ;;
  }

  dimension: sbqq_price_editable_c {
    type: yesno
    sql: ${TABLE}.sbqq_price_editable_c ;;
  }

  dimension: sbqq_pricing_method_c {
    type: string
    sql: ${TABLE}.sbqq_pricing_method_c ;;
  }

  dimension: sbqq_pricing_method_editable_c {
    type: yesno
    sql: ${TABLE}.sbqq_pricing_method_editable_c ;;
  }

  dimension: sbqq_quantity_editable_c {
    type: yesno
    sql: ${TABLE}.sbqq_quantity_editable_c ;;
  }

  dimension: sbqq_quantity_scale_c {
    type: number
    sql: ${TABLE}.sbqq_quantity_scale_c ;;
  }

  dimension: sbqq_reconfiguration_disabled_c {
    type: yesno
    sql: ${TABLE}.sbqq_reconfiguration_disabled_c ;;
  }

  dimension: sbqq_sort_order_c {
    type: number
    sql: ${TABLE}.sbqq_sort_order_c ;;
  }

  dimension: sbqq_subscription_base_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_base_c ;;
  }

  dimension: sbqq_subscription_pricing_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_pricing_c ;;
  }

  dimension: sbqq_subscription_term_c {
    type: number
    sql: ${TABLE}.sbqq_subscription_term_c ;;
  }

  dimension: sbqq_subscription_type_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_type_c ;;
  }

  dimension: sbqq_taxable_c {
    type: yesno
    sql: ${TABLE}.sbqq_taxable_c ;;
  }

  dimension: sbqq_term_discount_schedule_c {
    type: string
    sql: ${TABLE}.sbqq_term_discount_schedule_c ;;
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
    drill_fields: [product_id_c, name]
  }
}
