connection: "athena"

include: "*.view"         # include all views in this project
 # include all dashboards in this project
#include: "sf_usage_base"
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: usage__map {
  join: usage__delivery {
    sql_on: ${usage__map.company_id}=${usage__delivery.company_id} ;;
    relationship: one_to_many
    type: left_outer
  }
}
