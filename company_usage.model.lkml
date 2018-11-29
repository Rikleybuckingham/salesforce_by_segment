connection: "aws-postgresql"

# include all views in this project
include: "*.view"

# Create Usage Data Explore
explore: usage__map{
  label: "Usage Data"
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
explore: usage__zipcode {}

explore: usage__delivery {
  label: "Delivery"
}

explore: usage__node {
  label: "Node"
}

explore: usage__play {
  label: "Play"
}

explore: usage__location {}
