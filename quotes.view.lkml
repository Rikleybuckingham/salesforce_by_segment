view: quotes {
  sql_table_name: salesforce.quotes ;;

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

  dimension: deal_comments_c {
    type: string
    sql: ${TABLE}.deal_comments_c ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
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

  dimension: record_type_id {
    type: string
    sql: ${TABLE}.record_type_id ;;
  }

  dimension: sbcf_account_name_c {
    type: string
    sql: ${TABLE}.sbcf_account_name_c ;;
    group_label:"SBCF"
    label: "Account Name"
  }

  dimension: sbcf_arr_c {
    type: string
    sql: ${TABLE}.sbcf_arr_c ;;
    group_label:"SBCF"
    label: "ARR"
  }

  dimension: sbcf_bookings_c {
    type: string
    sql: ${TABLE}.sbcf_bookings_c ;;
    group_label:"SBCF"
    label: "Bookings"
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
    label: "End"
  }

  dimension: sbcf_is_for_one_year_c {
    type: yesno
    sql: ${TABLE}.sbcf_is_for_one_year_c ;;
    group_label:"SBCF"
    label: "Is One Year"
  }

  dimension: sbcf_max_discount_c {
    type: string
    sql: ${TABLE}.sbcf_max_discount_c ;;
    group_label:"SBCF"
    label: "Max Discount"
  }

  dimension: sbcf_more_than_one_year_c {
    type: yesno
    sql: ${TABLE}.sbcf_more_than_one_year_c ;;
    group_label:"SBCF"
    label: "More Than One Year"
  }

  dimension: sbcf_mrr_c {
    type: string
    sql: ${TABLE}.sbcf_mrr_c ;;
    group_label:"SBCF"
    label: "MRR"
  }

  dimension: sbcf_multi_years_invoce_timing_text_c {
    type: string
    sql: ${TABLE}.sbcf_multi_years_invoce_timing_text_c ;;
    group_label:"SBCF"
    label: "Multi Years Invoce Timing Text"
  }

  dimension: sbcf_one_time_fees_c {
    type: string
    sql: ${TABLE}.sbcf_one_time_fees_c ;;
    group_label:"SBCF"
    label: "One Time Fees"
  }

  dimension: sbcf_partner_name_c {
    type: string
    sql: ${TABLE}.sbcf_partner_name_c ;;
    group_label:"SBCF"
    label: "Partner Name"
  }

  dimension: sbcf_primary_contact_email_c {
    type: string
    sql: ${TABLE}.sbcf_primary_contact_email_c ;;
    group_label:"SBCF"
    label: "Primary Contact Email"
  }

  dimension: sbcf_primary_contact_fax_c {
    type: string
    sql: ${TABLE}.sbcf_primary_contact_fax_c ;;
    group_label:"SBCF"
    label: "Primary Contact Fax"
  }

  dimension: sbcf_primary_contact_first_name_c {
    type: string
    sql: ${TABLE}.sbcf_primary_contact_first_name_c ;;
    group_label:"SBCF"
    label: "Primary Contact First Name"
  }

  dimension: sbcf_primary_contact_last_name_c {
    type: string
    sql: ${TABLE}.sbcf_primary_contact_last_name_c ;;
    group_label:"SBCF"
    label: "Primary Contact Last Name"
  }

  dimension: sbcf_primary_contact_name_c {
    type: string
    sql: ${TABLE}.sbcf_primary_contact_name_c ;;
    group_label:"SBCF"
    label: "Primary Contact Name"
  }

  dimension: sbcf_primary_contact_phone_c {
    type: string
    sql: ${TABLE}.sbcf_primary_contact_phone_c ;;
    group_label:"SBCF"
    label: "Primary Contact Phone"
  }

  dimension: sbcf_primary_contact_title_c {
    type: string
    sql: ${TABLE}.sbcf_primary_contact_title_c ;;
    group_label:"SBCF"
    label: "Primary Contact Title"
  }

  dimension: sbcf_term_upcharge_approval_needed_c {
    type: yesno
    sql: ${TABLE}.sbcf_term_upcharge_approval_needed_c ;;
    group_label:"SBCF"
    label: "Term Upcharge Approval Needed"
  }

  dimension: sbcf_term_upcharge_c {
    type: string
    sql: ${TABLE}.sbcf_term_upcharge_c ;;
    group_label:"SBCF"
    label: "Term Upcharge"
  }

  dimension: sbqq_account_c {
    type: string
    sql: ${TABLE}.sbqq_account_c ;;
    group_label:"SBQQ"
    label: "Account"
  }

  dimension: sbqq_additional_discount_amount_c {
    type: string
    sql: ${TABLE}.sbqq_additional_discount_amount_c ;;
    group_label:"SBQQ"
    label: "Additional Discount Amound"
  }

  dimension: sbqq_average_customer_discount_c {
    type: string
    sql: ${TABLE}.sbqq_average_customer_discount_c ;;
    group_label:"SBQQ"
    label: "Average Customer Discount"
  }

  dimension: sbqq_average_partner_discount_c {
    type: string
    sql: ${TABLE}.sbqq_average_partner_discount_c ;;
    group_label:"SBQQ"
    label: "Average Partner Discount"
  }

  dimension: sbqq_billing_city_c {
    type: string
    sql: ${TABLE}.sbqq_billing_city_c ;;
    group_label:"SBQQ"
    label: "Billing City"
  }

  dimension: sbqq_billing_country_c {
    type: string
    sql: ${TABLE}.sbqq_billing_country_c ;;
    group_label:"SBQQ"
    label: "Billing Country"
  }

  dimension: sbqq_billing_name_c {
    type: string
    sql: ${TABLE}.sbqq_billing_name_c ;;
    group_label:"SBQQ"
    label: "Billing Name"
  }

  dimension: sbqq_billing_postal_code_c {
    type: string
    sql: ${TABLE}.sbqq_billing_postal_code_c ;;
    group_label:"SBQQ"
    label: "Billing Postal Code"
  }

  dimension: sbqq_billing_state_c {
    type: string
    sql: ${TABLE}.sbqq_billing_state_c ;;
    group_label:"SBQQ"
    label: "Billing State"
  }

  dimension: sbqq_billing_street_c {
    type: string
    sql: ${TABLE}.sbqq_billing_street_c ;;
    group_label:"SBQQ"
    label: "Billing Street"
  }

  dimension: sbqq_contracting_method_c {
    type: string
    sql: ${TABLE}.sbqq_contracting_method_c ;;
    group_label:"SBQQ"
    label: "Contracting Method"
  }

  dimension: sbqq_customer_amount_c {
    type: string
    sql: ${TABLE}.sbqq_customer_amount_c ;;
    group_label:"SBQQ"
    label: "Customer Amount"
  }

  dimension: sbqq_customer_discount_c {
    type: string
    sql: ${TABLE}.sbqq_customer_discount_c ;;
    group_label:"SBQQ"
    label: "Customer Discount"
  }

  dimension: sbqq_days_quote_open_c {
    type: number
    sql: ${TABLE}.sbqq_days_quote_open_c ;;
    group_label:"SBQQ"
    label: "Days Quote Open"
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
    label: "SBQQ Expiration"
  }

  dimension_group: sbqq_last_calculated_on_c {
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
    sql: ${TABLE}.sbqq_last_calculated_on_c ;;
    label: "SBQQ Last Calculated On"
  }

  dimension_group: sbqq_last_saved_on_c {
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
    sql: ${TABLE}.sbqq_last_saved_on_c ;;
    label: "SBQQ Last Saved On"
  }

  dimension: sbqq_line_item_count_c {
    type: number
    sql: ${TABLE}.sbqq_line_item_count_c ;;
    group_label:"SBQQ"
    label: "Line Item Count"
  }

  dimension: sbqq_line_items_grouped_c {
    type: yesno
    sql: ${TABLE}.sbqq_line_items_grouped_c ;;
    group_label:"SBQQ"
    label: "Line Items Grouped"
  }

  dimension: sbqq_line_items_printed_c {
    type: yesno
    sql: ${TABLE}.sbqq_line_items_printed_c ;;
    group_label:"SBQQ"
    label: "Line Items Printed"
  }

  dimension: sbqq_list_amount_c {
    type: string
    sql: ${TABLE}.sbqq_list_amount_c ;;
    group_label:"SBQQ"
    label: "List Amount"
  }

  dimension: sbqq_master_contract_c {
    type: string
    sql: ${TABLE}.sbqq_master_contract_c ;;
    group_label:"SBQQ"
    label: "Master Contract"
  }

  dimension: sbqq_net_amount_c {
    type: string
    sql: ${TABLE}.sbqq_net_amount_c ;;
    group_label:"SBQQ"
    label: "Net Amount"
  }

  dimension: sbqq_notes_c {
    type: string
    sql: ${TABLE}.sbqq_notes_c ;;
    group_label:"SBQQ"
    label: "Notes"
  }

  dimension: sbqq_opportunity_2_c {
    type: string
    sql: ${TABLE}.sbqq_opportunity_2_c ;;
    group_label:"SBQQ"
    label: "Opportunity 2"
  }

  dimension: sbqq_order_by_quote_line_group_c {
    type: yesno
    sql: ${TABLE}.sbqq_order_by_quote_line_group_c ;;
    group_label:"SBQQ"
    label: "Order by Quote Line Group"
  }

  dimension: sbqq_ordered_c {
    type: yesno
    sql: ${TABLE}.sbqq_ordered_c ;;
    group_label:"SBQQ"
    label: "Ordered"
  }

  dimension: sbqq_paper_size_c {
    type: string
    sql: ${TABLE}.sbqq_paper_size_c ;;
    group_label:"SBQQ"
    label: "Paper Size"
  }

  dimension: sbqq_partner_c {
    type: string
    sql: ${TABLE}.sbqq_partner_c ;;
    group_label:"SBQQ"
    label: "Partner"
  }

  dimension: sbqq_partner_discount_c {
    type: string
    sql: ${TABLE}.sbqq_partner_discount_c ;;
    group_label:"SBQQ"
    label: "Partner Discount"
  }

  dimension: sbqq_payment_terms_c {
    type: string
    sql: ${TABLE}.sbqq_payment_terms_c ;;
    group_label:"SBQQ"
    label: "Payment Terms"
  }

  dimension: sbqq_price_book_c {
    type: string
    sql: ${TABLE}.sbqq_price_book_c ;;
    group_label:"SBQQ"
    label: "Price Book"
  }

  dimension: sbqq_pricebook_id_c {
    type: string
    sql: ${TABLE}.sbqq_pricebook_id_c ;;
    group_label:"SBQQ"
    label: "Pricebook id"
  }

  dimension: sbqq_primary_c {
    type: yesno
    sql: ${TABLE}.sbqq_primary_c ;;
    group_label:"SBQQ"
    label: "Primary"
  }

  dimension: sbqq_primary_contact_c {
    type: string
    sql: ${TABLE}.sbqq_primary_contact_c ;;
    group_label:"SBQQ"
    label: "Primary Contact"
  }

  dimension: sbqq_regular_amount_c {
    type: string
    sql: ${TABLE}.sbqq_regular_amount_c ;;
    group_label:"SBQQ"
    label: "Regular Amount"
  }

  dimension: sbqq_renewal_term_c {
    type: number
    sql: ${TABLE}.sbqq_renewal_term_c ;;
    group_label:"SBQQ"
    label: "Renewal Term"
  }

  dimension: sbqq_sales_rep_c {
    type: string
    sql: ${TABLE}.sbqq_sales_rep_c ;;
    group_label:"SBQQ"
    label: "Sales Rep"
  }

  dimension: sbqq_shipping_city_c {
    type: string
    sql: ${TABLE}.sbqq_shipping_city_c ;;
    group_label:"SBQQ"
    label: "Shipping City"
  }

  dimension: sbqq_shipping_country_c {
    type: string
    sql: ${TABLE}.sbqq_shipping_country_c ;;
    group_label:"SBQQ"
    label: "Shipping Country"
  }

  dimension: sbqq_shipping_name_c {
    type: string
    sql: ${TABLE}.sbqq_shipping_name_c ;;
    group_label:"SBQQ"
    label: "Shipping Name"
  }

  dimension: sbqq_shipping_postal_code_c {
    type: string
    sql: ${TABLE}.sbqq_shipping_postal_code_c ;;
    group_label:"SBQQ"
    label: "Shipping Postal Code"
  }

  dimension: sbqq_shipping_state_c {
    type: string
    sql: ${TABLE}.sbqq_shipping_state_c ;;
    group_label:"SBQQ"
    label: "Shipping State"
  }

  dimension: sbqq_shipping_street_c {
    type: string
    sql: ${TABLE}.sbqq_shipping_street_c ;;
    group_label:"SBQQ"
    label: "Shipping Street"
  }

  dimension: sbqq_source_c {
    type: string
    sql: ${TABLE}.sbqq_source_c ;;
    group_label:"SBQQ"
    label: "Source"
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

  dimension: sbqq_status_c {
    type: string
    sql: ${TABLE}.sbqq_status_c ;;
    group_label:"SBQQ"
    label: "Status"
  }

  dimension: sbqq_subscription_term_c {
    type: number
    sql: ${TABLE}.sbqq_subscription_term_c ;;
    group_label:"SBQQ"
    label: "Subscription Term"
  }

  dimension: sbqq_target_customer_amount_c {
    type: string
    sql: ${TABLE}.sbqq_target_customer_amount_c ;;
    group_label:"SBQQ"
    label: "Target Customer Amount"
  }

  dimension: sbqq_total_customer_discount_amount_c {
    type: string
    sql: ${TABLE}.sbqq_total_customer_discount_amount_c ;;
    group_label:"SBQQ"
    label: "Total Customer Discount Amount"
  }

  dimension: sbqq_type_c {
    type: string
    sql: ${TABLE}.sbqq_type_c ;;
    group_label:"SBQQ"
    label: "Type"
  }

  dimension: sbqq_uncalculated_c {
    type: yesno
    sql: ${TABLE}.sbqq_uncalculated_c ;;
    group_label:"SBQQ"
    label: "Uncalculated"
  }

  dimension: sbqq_unopened_c {
    type: yesno
    sql: ${TABLE}.sbqq_unopened_c ;;
    group_label:"SBQQ"
    label: "Unopened"
  }

  dimension: sbqq_watermark_shown_c {
    type: yesno
    sql: ${TABLE}.sbqq_watermark_shown_c ;;
    group_label:"SBQQ"
    label: "Watermark Shown"
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
