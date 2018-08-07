view: sfbase__users {
  sql_table_name: salesforce.users ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    link: {
      label: "Sales Rep Insights Dashboard"
      url: "salesforce/sales_rep_insights?sales_rep_filter={{ name._value | url_encode}}"
    }
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, email, name, title]
  }
}
