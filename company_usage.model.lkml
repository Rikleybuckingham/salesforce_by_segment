connection: "redshift_admin"

# include all views in this project
include: "*.view"

# Create Usage Data Explore
explore: usage__map{
  label: "Usage Data"
  join: usage__delivery {
    sql_on: ${usage__map.composite_id}=${usage__delivery.composite_id} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Delivery"
  }

  join: usage__node {
    sql_on: ${usage__map.composite_id}=${usage__node.composite_id} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Agent"
  }

  join: usage__play {
    sql_on: ${usage__map.composite_id}=${usage__play.composite_id} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Play"
  }

  join: sf__accounts {
    sql_on: ${usage__map.salesforce_id}=${sf__accounts.id} ;;
    relationship: one_to_one
    type: left_outer
    view_label: "Account"
  }

  join: sf__opportunities {
    sql_on: ${usage__map.salesforce_id}=${sf__opportunities.account_id} ;;
    relationship: one_to_many
    type: left_outer
    view_label: "Opportunity"
  }
}
