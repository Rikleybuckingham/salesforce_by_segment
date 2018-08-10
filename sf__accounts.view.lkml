include: "sfbase__accounts.view.lkml"
view: sf__accounts {
  extends: [sfbase__accounts]
  view_label: "Accounts"

# Create Filters

  filter: opportunity_id_filter {
    type: string
    sql: replace({% parameter opportunity_id_filter %}, '-', '') = ${sf__opportunities.id} ;;
  }

  filter: account_id_filter {
    type: string
    sql: replace({% parameter account_id_filter %}, '-', '') = ${id} ;;
  }

# Create Dimensions

  dimension: account_name_link { # This is used if you want to click the account name to go to Company Insights Dashboard
    type: string
    sql: ${TABLE}.name ;;
    hidden: yes
    link: {
      label: "Company Insights Dashboard"
      url: "salesforce/company_insights?account_id_filter={{ id._value | url_encode}}&opportunity_id_filter={{ sf__opportunities.id._value | url_encode }}"
    }
  }

# Create Measures

  measure: count_customers {
    type: count

    filters: {
      field: sf__accounts.type
      value: "\"Customer\""
    }
  }
}
