connection: "aws-postgresql"

# include all views in this project
include: "*.view"

# Create Usage Data Explore
explore: usage_map{
  label: "Usage Data"
  hidden: yes

  join: usage_delivery {
    sql_on: ${usage_map.company_id} = ${usage_delivery.company_id} AND  ${usage_map.dms} = ${usage_delivery.dms} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Delivery"
  }

  join: usage_node {
    sql_on: ${usage_map.company_id} = ${usage_node.company_id} AND  ${usage_map.dms} = ${usage_node.source_env} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Agent"
  }

  join: usage_play {
    sql_on: ${usage_map.company_id} = ${usage_play.company_id} AND  ${usage_map.dms} = ${usage_play.source_env}.dms} ;;
    relationship: one_to_many
    type: inner
    view_label: "Play"
  }

  join: sf_accounts {
    sql_on: ${usage_map.salesforce_id}=${sf_accounts.id} ;;
    relationship: many_to_one
    type: inner
    view_label: "Account"
  }

  join: sf_opportunities {
    sql_on: ${usage_map.salesforce_id}=${sf_opportunities.account_id} ;;
    relationship: many_to_many
    type: inner
    view_label: "Opportunity"
  }
}
explore: usage_zipcode {
  hidden: yes
}

explore: usage_delivery {
  label: "Delivery"
  view_label: "Delivery"

  join: usage_company {
    sql_on: ${usage_delivery.company_id} = ${usage_company.company_id} and ${usage_delivery.dms} = ${usage_company.source_env} ;;
    relationship: many_to_one
    view_label: "Company"
  }
}

explore: usage_company {
  label: "Company"
  view_label: "Company"
}

explore: usage_node {
  label: "Node"
  view_label: "Node"

  join: usage_company {
    sql_on: ${usage_company.company_id} = ${usage_node.company_id} ;;
    relationship: many_to_many
    type: left_outer
    view_label: "Company"
  }
}

explore: usage_play {
  label: "Play"
  view_label: "Play"

  join: usage_company {
    sql_on: ${usage_company.company_id} = ${usage_play.company_id} ;;
    relationship: many_to_many
    type: left_outer
    view_label: "Company"
  }
}

explore: usage_location {
  hidden: yes
}

explore: zodiac__k_manager_param {
  label: "Agent Prefs"
  view_label: "K Manager Param"

  join: usage_company {
    sql_on: ${usage_company.company_id} = ${zodiac__k_manager.company_id} and ${usage_company.source_env} = ${zodiac__k_manager.source_env};;
    view_label: "Company"
    relationship: many_to_one
  }

  join:  zodiac__field_info{
    sql_on: ${zodiac__field_info.id} = ${zodiac__k_manager_param.field_info_id} ;;
    view_label: "Field Info"
    relationship: many_to_one
  }

  join: zodiac__k_manager {
    sql_on: ${zodiac__k_manager.id} = ${zodiac__k_manager_param.k_manager_id} ;;
    view_label: "K Manager"
    relationship: many_to_one
  }
}