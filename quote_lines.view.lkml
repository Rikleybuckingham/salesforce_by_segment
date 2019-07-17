view: quote_lines {
  sql_table_name: salesforce.quote_lines ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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

  dimension: sbcf_bundle_price_c {
    type: string
    sql: ${TABLE}.sbcf_bundle_price_c ;;
    group_label: "SBCF"
    label: "Bundle Price"
  }

  dimension_group: sbcf_end_date_c {
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
    sql: ${TABLE}.sbcf_end_date_c ;;
    label: "SBCF End"
  }

  dimension: sbcf_mrr_c {
    type: string
    sql: ${TABLE}.sbcf_mrr_c ;;
    group_label: "SBCF"
    label: "MRR"
  }

  dimension: sbcf_net_total_on_output_doc_c {
    type: string
    sql: ${TABLE}.sbcf_net_total_on_output_doc_c ;;
    group_label: "SBCF"
    label: "Net Total on Output Doc"
  }

  dimension: sbcf_quantity_for_block_price_c {
    type: number
    sql: ${TABLE}.sbcf_quantity_for_block_price_c ;;
    group_label: "SBCF"
    label: "Quantity for Block Price"
  }

  dimension: sbcf_recurring_c {
    type: yesno
    sql: ${TABLE}.sbcf_recurring_c ;;
    group_label: "SBCF"
    label: "Recurring"
  }

  dimension: sbcf_renew_c {
    type: yesno
    sql: ${TABLE}.sbcf_renew_c ;;
    group_label: "SBCF"
    label: "Renew"
  }

  dimension: sbcf_roll_up_price_c {
    type: yesno
    sql: ${TABLE}.sbcf_roll_up_price_c ;;
    group_label: "SBCF"
    label: "Roll Up Price"
  }

  dimension: sbcf_subscription_type_c {
    type: string
    sql: ${TABLE}.sbcf_subscription_type_c ;;
    group_label: "SBCF"
    label: "Subscription Type"
  }

  dimension: sbcf_term_upcharge_c {
    type: string
    sql: ${TABLE}.sbcf_term_upcharge_c ;;
    group_label: "SBCF"
    label: "Term Upcharge"
  }

  dimension: sbcf_yearly_price_rollup_to_quote_c {
    type: string
    sql: ${TABLE}.sbcf_yearly_price_rollup_to_quote_c ;;
    group_label: "SBCF"
    label: "Yearly Price Rollup to Quote"
  }

  dimension: sbcf_yearly_unit_price_c {
    type: string
    sql: ${TABLE}.sbcf_yearly_unit_price_c ;;
    group_label: "SBCF"
    label: "Yearly Unit Price"
  }

  dimension: sbqq_additional_discount_amount_c {
    type: string
    sql: ${TABLE}.sbqq_additional_discount_amount_c ;;
    group_label: "SBQQ"
    label: "Additional Discount Amount"
  }

  dimension: sbqq_additional_discount_c {
    type: string
    sql: ${TABLE}.sbqq_additional_discount_c ;;
    group_label: "SBQQ"
    label: "Additional Discount"
  }

  dimension: sbqq_allow_asset_refund_c {
    type: yesno
    sql: ${TABLE}.sbqq_allow_asset_refund_c ;;
    group_label: "SBQQ"
    label: "Allow Asset Refund"
  }

  dimension: sbqq_block_price_c {
    type: string
    sql: ${TABLE}.sbqq_block_price_c ;;
    group_label: "SBQQ"
    label: "Block Price"
  }

  dimension: sbqq_bundle_c {
    type: yesno
    sql: ${TABLE}.sbqq_bundle_c ;;
    group_label: "SBQQ"
    label: "Bundle"
  }

  dimension: sbqq_bundled_c {
    type: yesno
    sql: ${TABLE}.sbqq_bundled_c ;;
    group_label: "SBQQ"
    label: "Bundled"
  }

  dimension: sbqq_bundled_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_bundled_quantity_c ;;
    group_label: "SBQQ"
    label: "Bundled Quantity"
  }

  dimension: sbqq_carryover_line_c {
    type: yesno
    sql: ${TABLE}.sbqq_carryover_line_c ;;
    group_label: "SBQQ"
    label: "Carryover Line"
  }

  dimension: sbqq_completely_contracted_c {
    type: yesno
    sql: ${TABLE}.sbqq_completely_contracted_c ;;
    group_label: "SBQQ"
    label: "Completely Contracted"
  }

  dimension: sbqq_component_cost_c {
    type: string
    sql: ${TABLE}.sbqq_component_cost_c ;;
    group_label: "SBQQ"
    label: "Component Cost"
  }

  dimension: sbqq_component_discounted_by_package_c {
    type: yesno
    sql: ${TABLE}.sbqq_component_discounted_by_package_c ;;
    group_label: "SBQQ"
    label: "Component Discount by Package"
  }

  dimension: sbqq_component_list_total_c {
    type: string
    sql: ${TABLE}.sbqq_component_list_total_c ;;
    group_label: "SBQQ"
    label: "Component List Total"
  }

  dimension: sbqq_component_total_c {
    type: string
    sql: ${TABLE}.sbqq_component_total_c ;;
    group_label: "SBQQ"
    label: "Component Total"
  }

  dimension: sbqq_component_uplifted_by_package_c {
    type: yesno
    sql: ${TABLE}.sbqq_component_uplifted_by_package_c ;;
    group_label: "SBQQ"
    label: "Component Uplifted by Package"
  }

  dimension: sbqq_component_visibility_c {
    type: string
    sql: ${TABLE}.sbqq_component_visibility_c ;;
    group_label: "SBQQ"
    label: "Component Visibility"
  }

  dimension: sbqq_configuration_required_c {
    type: yesno
    sql: ${TABLE}.sbqq_configuration_required_c ;;
    group_label: "SBQQ"
    label: "Configuration Required"
  }

  dimension: sbqq_cost_editable_c {
    type: yesno
    sql: ${TABLE}.sbqq_cost_editable_c ;;
    group_label: "SBQQ"
    label: "Cost Editable"
  }

  dimension: sbqq_customer_price_c {
    type: string
    sql: ${TABLE}.sbqq_customer_price_c ;;
    group_label: "SBQQ"
    label: "Customer Price"
  }

  dimension: sbqq_customer_total_c {
    type: string
    sql: ${TABLE}.sbqq_customer_total_c ;;
    group_label: "SBQQ"
    label: "Customer Total"
  }

  dimension: sbqq_default_subscription_term_c {
    type: number
    sql: ${TABLE}.sbqq_default_subscription_term_c ;;
    group_label: "SBQQ"
    label: "Default Subscription Term"
  }

  dimension: sbqq_description_c {
    type: string
    sql: ${TABLE}.sbqq_description_c ;;
    group_label: "SBQQ"
    label: "Description"
  }

  dimension: sbqq_discount_c {
    type: string
    sql: ${TABLE}.sbqq_discount_c ;;
    group_label: "SBQQ"
    label: "Discount"
  }

  dimension: sbqq_discount_schedule_c {
    type: string
    sql: ${TABLE}.sbqq_discount_schedule_c ;;
    group_label: "SBQQ"
    label: "Discount Schedule"
  }

  dimension: sbqq_discount_schedule_type_c {
    type: string
    sql: ${TABLE}.sbqq_discount_schedule_type_c ;;
    group_label: "SBQQ"
    label: "Discount Schedule Type"
  }

  dimension: sbqq_discount_tier_c {
    type: string
    sql: ${TABLE}.sbqq_discount_tier_c ;;
    group_label: "SBQQ"
    label: "Discount Tier"
  }

  dimension: sbqq_dynamic_option_id_c {
    type: string
    sql: ${TABLE}.sbqq_dynamic_option_id_c ;;
    group_label: "SBQQ"
    label: "Dynamic Option id"
  }

  dimension_group: sbqq_effective_end_date_c {
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
    sql: ${TABLE}.sbqq_effective_end_date_c ;;
    label: "SBQQ Effective End"
  }

  dimension: sbqq_effective_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_effective_quantity_c ;;
    group_label: "SBQQ"
    label: "Effective Quantity"
  }

  dimension_group: sbqq_effective_start_date_c {
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
    sql: ${TABLE}.sbqq_effective_start_date_c ;;
    label: "SBQQ Effective Start"
  }

  dimension_group: sbqq_end_date_c {
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
    sql: ${TABLE}.sbqq_end_date_c ;;
    label: "SBQQ End"
  }

  dimension: sbqq_existing_c {
    type: yesno
    sql: ${TABLE}.sbqq_existing_c ;;
    group_label: "SBQQ"
    label: "Existing"
  }

  dimension: sbqq_favorite_c {
    type: string
    sql: ${TABLE}.sbqq_favorite_c ;;
    group_label: "SBQQ"
    label: "Favorite"
  }

  dimension: sbqq_group_c {
    type: string
    sql: ${TABLE}.sbqq_group_c ;;
    group_label: "SBQQ"
    label: "Group"
  }

  dimension: sbqq_hidden_c {
    type: yesno
    sql: ${TABLE}.sbqq_hidden_c ;;
    group_label: "SBQQ"
    label: "Hidden"
  }

  dimension: sbqq_incomplete_c {
    type: yesno
    sql: ${TABLE}.sbqq_incomplete_c ;;
    group_label: "SBQQ"
    label: "Incomplete"
  }

  dimension: sbqq_list_price_c {
    type: string
    sql: ${TABLE}.sbqq_list_price_c ;;
    group_label: "SBQQ"
    label: "List Price"
  }

  dimension: sbqq_list_total_c {
    type: string
    sql: ${TABLE}.sbqq_list_total_c ;;
    group_label: "SBQQ"
    label: "List Total"
  }

  dimension: sbqq_markup_c {
    type: string
    sql: ${TABLE}.sbqq_markup_c ;;
    group_label: "SBQQ"
    label: "Markup"
  }

  dimension: sbqq_net_price_c {
    type: string
    sql: ${TABLE}.sbqq_net_price_c ;;
    group_label: "SBQQ"
    label: "Net Price"
  }

  dimension: sbqq_net_total_c {
    type: string
    sql: ${TABLE}.sbqq_net_total_c ;;
    group_label: "SBQQ"
    label: "Net Total"
  }

  dimension: sbqq_non_discountable_c {
    type: yesno
    sql: ${TABLE}.sbqq_non_discountable_c ;;
    group_label: "SBQQ"
    label: "Non Discountable"
  }

  dimension: sbqq_non_partner_discountable_c {
    type: yesno
    sql: ${TABLE}.sbqq_non_partner_discountable_c ;;
    group_label: "SBQQ"
    label: "Non Partner Discountable"
  }

  dimension: sbqq_number_c {
    type: number
    sql: ${TABLE}.sbqq_number_c ;;
    group_label: "SBQQ"
    label: "Number"
  }

  dimension: sbqq_option_level_c {
    type: number
    sql: ${TABLE}.sbqq_option_level_c ;;
    group_label: "SBQQ"
    label: "Option Level"
  }

  dimension: sbqq_option_type_c {
    type: string
    sql: ${TABLE}.sbqq_option_type_c ;;
    group_label: "SBQQ"
    label: "Option Type"
  }

  dimension: sbqq_optional_c {
    type: yesno
    sql: ${TABLE}.sbqq_optional_c ;;
    group_label: "SBQQ"
    label: "Optional"
  }

  dimension: sbqq_original_price_c {
    type: string
    sql: ${TABLE}.sbqq_original_price_c ;;
    group_label: "SBQQ"
    label: "Original Price"
  }

  dimension: sbqq_package_cost_c {
    type: string
    sql: ${TABLE}.sbqq_package_cost_c ;;
    group_label: "SBQQ"
    label: "Package Cost"
  }

  dimension: sbqq_package_list_total_c {
    type: string
    sql: ${TABLE}.sbqq_package_list_total_c ;;
    group_label: "SBQQ"
    label: "Package List Total"
  }

  dimension: sbqq_package_total_c {
    type: string
    sql: ${TABLE}.sbqq_package_total_c ;;
    group_label: "SBQQ"
    label: "Package Total"
  }

  dimension: sbqq_partner_price_c {
    type: string
    sql: ${TABLE}.sbqq_partner_price_c ;;
    group_label: "SBQQ"
    label: "Partner Price"
  }

  dimension: sbqq_partner_total_c {
    type: string
    sql: ${TABLE}.sbqq_partner_total_c ;;
    group_label: "SBQQ"
    label: "Partner Total"
  }

  dimension: sbqq_price_editable_c {
    type: yesno
    sql: ${TABLE}.sbqq_price_editable_c ;;
    group_label: "SBQQ"
    label: "Price Editable"
  }

  dimension: sbqq_pricebook_entry_id_c {
    type: string
    sql: ${TABLE}.sbqq_pricebook_entry_id_c ;;
    group_label: "SBQQ"
    label: "Pricebook Entry id"
  }

  dimension: sbqq_pricing_method_c {
    type: string
    sql: ${TABLE}.sbqq_pricing_method_c ;;
    group_label: "SBQQ"
    label: "Pricing Method"
  }

  dimension: sbqq_pricing_method_editable_c {
    type: yesno
    sql: ${TABLE}.sbqq_pricing_method_editable_c ;;
    group_label: "SBQQ"
    label: "Pricing Method Editable"
  }

  dimension: sbqq_prior_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_prior_quantity_c ;;
    group_label: "SBQQ"
    label: "Prior Quantity"
  }

  dimension: sbqq_product_c {
    type: string
    sql: ${TABLE}.sbqq_product_c ;;
    group_label: "SBQQ"
    label: "Product"
  }

  dimension: sbqq_product_code_c {
    type: string
    sql: ${TABLE}.sbqq_product_code_c ;;
    group_label: "SBQQ"
    label: "Product Code"
  }

  dimension: sbqq_product_family_c {
    type: string
    sql: ${TABLE}.sbqq_product_family_c ;;
    group_label: "SBQQ"
    label: "Product Family"
  }

  dimension: sbqq_product_name_c {
    type: string
    sql: ${TABLE}.sbqq_product_name_c ;;
    group_label: "SBQQ"
    label: "Product Name"
  }

  dimension: sbqq_product_option_c {
    type: string
    sql: ${TABLE}.sbqq_product_option_c ;;
    group_label: "SBQQ"
    label: "Product Option"
  }

  dimension: sbqq_product_subscription_type_c {
    type: string
    sql: ${TABLE}.sbqq_product_subscription_type_c ;;
    group_label: "SBQQ"
    label: "Product Subscription Type"
  }

  dimension: sbqq_prorate_multiplier_c {
    type: number
    sql: ${TABLE}.sbqq_prorate_multiplier_c ;;
    group_label: "SBQQ"
    label: "Prorate Multiplier"
  }

  dimension: sbqq_prorated_list_price_c {
    type: string
    sql: ${TABLE}.sbqq_prorated_list_price_c ;;
    group_label: "SBQQ"
    label: "Prorated List Price"
  }

  dimension: sbqq_prorated_price_c {
    type: string
    sql: ${TABLE}.sbqq_prorated_price_c ;;
    group_label: "SBQQ"
    label: "Prorated Price"
  }

  dimension: sbqq_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_quantity_c ;;
    group_label: "SBQQ"
    label: "Quantity"
  }

  dimension: sbqq_quote_c {
    type: string
    sql: ${TABLE}.sbqq_quote_c ;;
    group_label: "SBQQ"
    label: "Quote"
  }

  dimension: sbqq_regular_price_c {
    type: string
    sql: ${TABLE}.sbqq_regular_price_c ;;
    group_label: "SBQQ"
    label: "Regular Price"
  }

  dimension: sbqq_regular_total_c {
    type: string
    sql: ${TABLE}.sbqq_regular_total_c ;;
    group_label: "SBQQ"
    label: "Regular Total"
  }

  dimension: sbqq_renewal_c {
    type: yesno
    sql: ${TABLE}.sbqq_renewal_c ;;
    group_label: "SBQQ"
    label: "Renewal"
  }

  dimension: sbqq_renewed_subscription_c {
    type: string
    sql: ${TABLE}.sbqq_renewed_subscription_c ;;
    group_label: "SBQQ"
    label: "Renewed Subscription"
  }

  dimension: sbqq_required_by_c {
    type: string
    sql: ${TABLE}.sbqq_required_by_c ;;
    group_label: "SBQQ"
    label: "Required By"
  }

  dimension: sbqq_source_c {
    type: string
    sql: ${TABLE}.sbqq_source_c ;;
    group_label: "SBQQ"
    label: "Source"
  }

  dimension: sbqq_special_price_c {
    type: string
    sql: ${TABLE}.sbqq_special_price_c ;;
    group_label: "SBQQ"
    label: "Special Price"
  }

  dimension: sbqq_special_price_type_c {
    type: string
    sql: ${TABLE}.sbqq_special_price_type_c ;;
    group_label: "SBQQ"
    label: "Special Price Type"
  }

  dimension_group: sbqq_start_date_c {
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
    sql: ${TABLE}.sbqq_start_date_c ;;
    label: "SBQQ Start"
  }

  dimension: sbqq_subscription_base_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_base_c ;;
    group_label: "SBQQ"
    label: "Subscription Base"
  }

  dimension: sbqq_subscription_percent_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_percent_c ;;
    group_label: "SBQQ"
    label: "Subscription Percent"
  }

  dimension: sbqq_subscription_pricing_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_pricing_c ;;
    group_label: "SBQQ"
    label: "Subscription Pricing"
  }

  dimension: sbqq_subscription_scope_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_scope_c ;;
    group_label: "SBQQ"
    label: "Subscription Scope"
  }

  dimension: sbqq_subscription_type_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_type_c ;;
    group_label: "SBQQ"
    label: "Subscription Type"
  }

  dimension: sbqq_taxable_c {
    type: yesno
    sql: ${TABLE}.sbqq_taxable_c ;;
    group_label: "SBQQ"
    label: "Taxable"
  }

  dimension: sbqq_term_discount_c {
    type: string
    sql: ${TABLE}.sbqq_term_discount_c ;;
    group_label: "SBQQ"
    label: "Term Discount"
  }

  dimension: sbqq_term_discount_schedule_c {
    type: string
    sql: ${TABLE}.sbqq_term_discount_schedule_c ;;
    group_label: "SBQQ"
    label: "Term Discount Schedule"
  }

  dimension: sbqq_term_discount_tier_c {
    type: string
    sql: ${TABLE}.sbqq_term_discount_tier_c ;;
    group_label: "SBQQ"
    label: "Term Discount Tier"
  }

  dimension: sbqq_total_discount_amount_c {
    type: string
    sql: ${TABLE}.sbqq_total_discount_amount_c ;;
    group_label: "SBQQ"
    label: "Total Discount Amount"
  }

  dimension: sbqq_total_discount_rate_c {
    type: string
    sql: ${TABLE}.sbqq_total_discount_rate_c ;;
    group_label: "SBQQ"
    label: "Total Discount Rate"
  }

  dimension: sbqq_upgraded_subscription_c {
    type: string
    sql: ${TABLE}.sbqq_upgraded_subscription_c ;;
    group_label: "SBQQ"
    label: "Upgraded Subscription"
  }

  dimension: sbqq_uplift_amount_c {
    type: string
    sql: ${TABLE}.sbqq_uplift_amount_c ;;
    group_label: "SBQQ"
    label: "Uplift Amount"
  }

  dimension: sbqq_uplift_c {
    type: string
    sql: ${TABLE}.sbqq_uplift_c ;;
    group_label: "SBQQ"
    label: "Uplift"
  }

  dimension: sbqq_volume_discount_c {
    type: string
    sql: ${TABLE}.sbqq_volume_discount_c ;;
    group_label: "SBQQ"
    label: "Volume Discount"
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
    drill_fields: [id, name]
  }
}
