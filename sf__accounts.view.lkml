include: "sfbase__accounts.view.lkml"
view: sf__accounts {
  extends: [sfbase__accounts]

  filter: created_date_filter {
    type: date
  }

  filter: opportunity_id_filter {
    type: string
    sql: replace({% parameter opportunity_id_filter %}, '-', '') = ${sf__opportunities.id} ;;
  }

  filter: account_id_filter {
    type: string
    sql: replace({% parameter account_id_filter %}, '-', '') = ${id} ;;
  }

  dimension: account_name_link {
    type: string
    sql: ${TABLE}.name ;;
    hidden: yes
    link: {
      label: "Company Insights Dashboard"
      url: "salesforce/company_insights?account_id_filter={{ id._value | url_encode}}&opportunity_id_filter={{ sf__opportunities.id._value | url_encode }}"
    }
  }

  dimension: is_in_date_filter {
    type: yesno
    sql: {% condition created_date_filter %} ${created_date} {% endcondition %}
      ;;
  }

  dimension: created {
    #X# Invalid LookML inside "dimension": {"timeframes":["date","week","month","raw"]}
  }

  measure: customer_created_in_date_filter {
    type: count

    filters: {
      field: is_in_date_filter
      value: "yes"
    }
  }

  measure: percent_of_accounts {
    type: percent_of_total
    sql: ${count} ;;
  }

  measure: count_customers {
    type: count

    filters: {
      field: sf__accounts.type
      value: "\"Customer\""
    }
  }
}
