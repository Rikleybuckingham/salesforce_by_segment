connection: "aws-postgresql"

# include all views in this project
include: "*.view"

# Create Usage Data Explore
explore: usage__map{
  label: "Usage Data"
  hidden: yes

  join: usage__delivery {
    sql_on: ${usage__map.company_id} = ${usage__delivery.company_id} AND  ${usage__map.dms} = ${usage__delivery.dms} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Delivery"
  }

  join: usage__node {
    sql_on: ${usage__map.company_id} = ${usage__node.company_id} AND  ${usage__map.dms} = ${usage__node.source_env} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Agent"
  }

  join: usage__play {
    sql_on: ${usage__map.company_id} = ${usage__play.company_id} AND  ${usage__map.dms} = ${usage__play.source_env}.dms} ;;
    relationship: one_to_many
    type: inner
    view_label: "Play"
  }

  join: sf__account {
    sql_on: ${usage__map.salesforce_id}=${sf__account.id} ;;
    relationship: many_to_one
    type: inner
    view_label: "Account"
  }

  join: sf__opportunity {
    sql_on: ${usage__map.salesforce_id}=${sf__opportunity.account_id} ;;
    relationship: many_to_many
    type: inner
    view_label: "Opportunity"
  }
}
explore: usage__zipcode {
  hidden: yes
}

explore: usage__delivery {
  label: "Delivery"
  view_label: "Delivery"

  join: usage__company {
    sql_on: ${usage__delivery.company_id} = ${usage__company.company_id} and ${usage__delivery.dms} = ${usage__company.source_env} ;;
    relationship: many_to_one
    view_label: "Company"
  }
}

explore: usage__company {
  label: "Company"
  view_label: "Company"
}

explore: usage__node {
  label: "Node"
  view_label: "Node"

  join: usage__company {
    sql_on: ${usage__company.company_id} = ${usage__node.company_id} ;;
    relationship: many_to_many
    type: left_outer
    view_label: "Company"
  }
}

explore: usage__play {
  label: "Play"
  view_label: "Play"

  join: usage__company {
    sql_on: ${usage__company.company_id} = ${usage__play.company_id} ;;
    relationship: many_to_many
    type: left_outer
    view_label: "Company"
  }
}

explore: usage__location {
  hidden: yes
}

explore: zodiac__k_manager_param {
  label: "Agent Prefs"
  view_label: "K Manager Param"

  join: usage__company {
    sql_on: ${usage__company.company_id} = ${zodiac__k_manager.company_id} and ${usage__company.source_env} = ${zodiac__k_manager.source_env};;
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
