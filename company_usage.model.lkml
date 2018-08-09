connection: "redshift_admin"

include: "*.view"         # include all views in this project
 # include all dashboards in this project
#include: "sf_usage_base"
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: usage__map {
  join: usage__delivery {
    sql_on: ${usage__map.composite_id}=${usage__delivery.composite_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: sf__accounts {
    sql_on: ${usage__map.salesforce_id}=${sf__accounts.id} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: sf__opportunities {
    sql_on: ${usage__map.salesforce_id}=${sf__opportunities.account_id} ;;
    relationship: one_to_many
    type: left_outer
  }
}
