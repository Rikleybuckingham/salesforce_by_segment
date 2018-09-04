include: "sfbase__accounts.view.lkml"
view: sf__accounts {
  extends: [sfbase__accounts]
  view_label: "Accounts"

# Create Filters

  filter: account_id_filter {
    type: string
    sql: replace({% parameter account_id_filter %}, '-', '') = ${id} ;;
  }

# Create Dimensions

  dimension: dms {
    type: string
    sql: ${TABLE}.environment_c ;;
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
