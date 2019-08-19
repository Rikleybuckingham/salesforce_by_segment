view: sf_subscriptions {
  sql_table_name: salesforce.subscriptions ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.created_by_id ;;
  }

  dimension: arr {
    label: "ARR"
    type: number
    sql: CAST(${sbqq_net_price_c} AS FLOAT) / NULLIF(${sbqq_prorate_multiplier_c}, 0) ;;
    value_format_name: usd_0
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

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
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

  dimension: sbqq_account_c {
    type: string
    sql: ${TABLE}.sbqq_account_c ;;
    label: "Account"
    group_label: "SBQQ"
  }

  dimension: sbqq_additional_discount_amount_c {
    type: string
    sql: ${TABLE}.sbqq_additional_discount_amount_c ;;
    label: "Additional Discount Amount"
    group_label: "SBQQ"
  }

  dimension: sbqq_bundle_c {
    type: yesno
    sql: ${TABLE}.sbqq_bundle_c ;;
    label: "Bundle"
    group_label: "SBQQ"
  }

  dimension: sbqq_bundled_c {
    type: yesno
    sql: ${TABLE}.sbqq_bundled_c ;;
    label: "Bundled"
    group_label: "SBQQ"
  }

  dimension: sbqq_bundled_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_bundled_quantity_c ;;
    label: "Bundled Quantity"
    group_label: "SBQQ"
  }

  dimension: sbqq_component_discounted_by_package_c {
    type: yesno
    sql: ${TABLE}.sbqq_component_discounted_by_package_c ;;
    label: "Component Discounted by Package"
    group_label: "SBQQ"
  }

  dimension: sbqq_contract_c {
    type: string
    sql: ${TABLE}.sbqq_contract_c ;;
    label: "Contract"
    group_label: "SBQQ"
  }

  dimension: sbqq_contract_number_c {
    type: string
    sql: ${TABLE}.sbqq_contract_number_c ;;
    label: "Contract Number"
    group_label: "SBQQ"
  }

  dimension: sbqq_customer_price_c {
    type: string
    sql: ${TABLE}.sbqq_customer_price_c ;;
    label: "Customer Price"
    group_label: "SBQQ"
  }

  dimension: sbqq_discount_c {
    type: string
    sql: ${TABLE}.sbqq_discount_c ;;
    label: "Discount"
    group_label: "SBQQ"
  }

  dimension: sbqq_discount_schedule_c {
    type: string
    sql: ${TABLE}.sbqq_discount_schedule_c ;;
    label: "Discount Schedule"
    group_label: "SBQQ"
  }

  dimension: sbqq_discount_schedule_type_c {
    type: string
    sql: ${TABLE}.sbqq_discount_schedule_type_c ;;
    label: "Disicount Schedule Type"
    group_label: "SBQQ"
  }

  dimension: sbqq_dynamic_option_id_c {
    type: string
    sql: ${TABLE}.sbqq_dynamic_option_id_c ;;
    label: "Dynamic Option id"
    group_label: "SBQQ"
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
      fiscal_quarter,
      year
    ]
    sql: ${TABLE}.sbqq_end_date_c ;;
    label: "End"
  }

  dimension: sbqq_has_consumption_schedule_c {
    type: yesno
    sql: ${TABLE}.sbqq_has_consumption_schedule_c ;;
    label: "Has Consumption Schedule"
    group_label: "SBQQ"
  }

  dimension: sbqq_list_price_c {
    type: string
    sql: ${TABLE}.sbqq_list_price_c ;;
    label: "List Price"
    group_label: "SBQQ"
  }

  dimension: sbqq_net_price_c {
    type: number
    sql: ${TABLE}.sbqq_net_price_c ;;
    label: "Net Price"
    group_label: "SBQQ"
  }

  dimension: sbqq_number_c {
    type: number
    sql: ${TABLE}.sbqq_number_c ;;
    label: "Number"
    group_label: "SBQQ"
  }

  dimension: sbqq_option_level_c {
    type: number
    sql: ${TABLE}.sbqq_option_level_c ;;
    label: "Option Level"
    group_label: "SBQQ"
  }

  dimension: sbqq_option_type_c {
    type: string
    sql: ${TABLE}.sbqq_option_type_c ;;
    label: "Option Type"
    group_label: "SBQQ"
  }

  dimension: sbqq_original_quote_line_c {
    type: string
    sql: ${TABLE}.sbqq_original_quote_line_c ;;
    label: "Original Quote Line"
    group_label: "SBQQ"
  }

  dimension: sbqq_pricing_method_c {
    type: string
    sql: ${TABLE}.sbqq_pricing_method_c ;;
    label: "Pricing Method"
    group_label: "SBQQ"
  }

  dimension: sbqq_product_c {
    type: string
    sql: ${TABLE}.sbqq_product_c ;;
    label: "Product"
    group_label: "SBQQ"
  }

  dimension: sbqq_product_id_c {
    type: string
    sql: ${TABLE}.sbqq_product_id_c ;;
    label: "Product id"
    group_label: "SBQQ"
  }

  dimension: sbqq_product_name_c {
    type: string
    sql: ${TABLE}.sbqq_product_name_c ;;
    label: "Product Name"
    group_label: "SBQQ"
  }

  dimension: sbqq_product_option_c {
    type: string
    sql: ${TABLE}.sbqq_product_option_c ;;
    label: "Product Option"
    group_label: "SBQQ"
  }

  dimension: sbqq_product_subscription_type_c {
    type: string
    sql: ${TABLE}.sbqq_product_subscription_type_c ;;
    label: "Product Subscription Type"
    group_label: "SBQQ"
  }

  dimension: sbqq_prorate_multiplier_c {
    type: number
    sql: ${TABLE}.sbqq_prorate_multiplier_c ;;
    label: "Prorate Multiplier"
    group_label: "SBQQ"
  }

  dimension: sbqq_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_quantity_c ;;
    label: "Quantity"
    group_label: "SBQQ"
  }

  dimension: sbqq_quote_line_c {
    type: string
    sql: ${TABLE}.sbqq_quote_line_c ;;
    label: "Quote Line"
    group_label: "SBQQ"
  }

  dimension: sbqq_regular_price_c {
    type: string
    sql: ${TABLE}.sbqq_regular_price_c ;;
    label: "Regular Price"
    group_label: "SBQQ"
  }

  dimension: sbqq_renewal_price_c {
    type: string
    sql: ${TABLE}.sbqq_renewal_price_c ;;
    label: "Renewal Price"
    group_label: "SBQQ"
  }

  dimension: sbqq_renewal_product_id_c {
    type: string
    sql: ${TABLE}.sbqq_renewal_product_id_c ;;
    label: "Renewal Product id"
    group_label: "SBQQ"
  }

  dimension: sbqq_renewal_quantity_c {
    type: number
    sql: ${TABLE}.sbqq_renewal_quantity_c ;;
    label: "Renewal Quantity"
    group_label: "SBQQ"
  }

  dimension_group: sbqq_renewed_date_c {
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
    sql: ${TABLE}.sbqq_renewed_date_c ;;
    label: "Renewed"
  }

  dimension: sbqq_required_by_id_c {
    type: string
    sql: ${TABLE}.sbqq_required_by_id_c ;;
    label: "Required by id"
    group_label: "SBQQ"
  }

  dimension: sbqq_required_by_product_c {
    type: string
    sql: ${TABLE}.sbqq_required_by_product_c ;;
    label: "Required by Product"
    group_label: "SBQQ"
  }

  dimension: sbqq_root_id_c {
    type: string
    sql: ${TABLE}.sbqq_root_id_c ;;
    label: "Root id"
    group_label: "SBQQ"
  }

  dimension: sbqq_special_price_c {
    type: string
    sql: ${TABLE}.sbqq_special_price_c ;;
    label: "Special Price"
    group_label: "SBQQ"
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
      fiscal_quarter,
      year
    ]
    sql: ${TABLE}.sbqq_start_date_c ;;
    label: "Start"
  }

  dimension_group: sbqq_subscription_end_date_c {
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
    sql: ${TABLE}.sbqq_subscription_end_date_c ;;
    label: "Subscription End"
    hidden: yes
  }

  dimension_group: sbqq_subscription_start_date_c {
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
    sql: ${TABLE}.sbqq_subscription_start_date_c ;;
    label: "Subscription Start"
    hidden: yes
  }

  dimension: sbqq_subscription_type_c {
    type: string
    sql: ${TABLE}.sbqq_subscription_type_c ;;
    label: "Subscription Type"
    group_label: "SBQQ"
  }

  dimension: sbqq_term_discount_schedule_c {
    type: string
    sql: ${TABLE}.sbqq_term_discount_schedule_c ;;
    label: "Term Discount Schedule"
    group_label: "SBQQ"
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

  measure: total_arr {
    label: "Total ARR"
    type: sum
    sql: ${arr} ;;
    value_format_name: usd_0
    drill_fields: [details*]
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }

  set: details {
    fields: [
      accounts.name,
      sf_contracts.name,
      sf_subscriptions.sbqq_product_name_c,
      sf_subscriptions.name,
      sf_subscriptions.sbqq_quantity_c,
      sf_subscriptions.sbqq_list_price_c,
      sf_subscriptions.sbqq_prorate_multiplier_c,
      sbqq_start_date_c_date,
      sbqq_end_date_c_date,
      sf_subscriptions.total_arr
    ]
  }
}
