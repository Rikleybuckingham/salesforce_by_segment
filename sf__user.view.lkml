view: sf_user {
  sql_table_name: salesforce.users ;;

# Create Filters

  filter: name_select {
    suggest_dimension: name
  }

# Create Dimensions

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

# Create Measures

  measure: count {
    type: count
    drill_fields: [id, email, name, title]
  }
}