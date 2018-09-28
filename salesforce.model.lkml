connection: "segment_sources"

# include Salesforce views
include: "sf__*.view"

# include the dashboards
include: "*.dashboard"

# Create Accounts Explore
explore: sf__account {
  label: "Accounts"
  sql_always_where: NOT ${sf__account.is_deleted}
    ;;

  join: owner {
    from: sf__user
    sql_on: ${sf__account.owner_id} = ${owner.id} ;;
    relationship: many_to_one
    view_label: "Account Owner"
  }

  join: sf__opportunity {
    type: left_outer
    sql_on: ${sf__opportunity.account_id} = ${sf__account.id} ;;
    relationship: many_to_one
    view_label: "Opportunities"
  }

  join: sf__lead {
    type: left_outer
    sql_on: ${sf__account.id} = ${sf__lead.converted_account_id} ;;
    relationship: one_to_many
    view_label: "Leads"
  }
}

# Create Leads Explore
explore: sf__lead {
  label: "Leads"
  sql_always_where: NOT ${sf__lead.is_deleted} ;;

  join: lead_owners {
    from: sf__user
    sql_on: ${sf__lead.owner_id} = ${lead_owners.id} ;;
    relationship: many_to_one
    view_label: "Lead Owners"
  }

  join: sf__account {
    sql_on: ${sf__lead.converted_account_id} = ${sf__account.id} ;;
    relationship: many_to_one
    view_label: "Accounts"
  }

  join: account_owners {
    from: sf__user
    sql_on: ${sf__account.owner_id} = ${account_owners.id} ;;
    relationship: many_to_one
    view_label: "Account Owners"
  }

  join: sf__opportunity {
    sql_on: ${sf__lead.converted_opportunity_id} = ${sf__opportunity.id} ;;
    relationship: many_to_one
    view_label: "Opportunities"
  }

  join: opportunity_owners {
    from: sf__user
    sql_on: ${sf__opportunity.owner_id} = ${opportunity_owners.id} ;;
    relationship: many_to_one
    view_label: "Opportunity Owners"
  }
}

# Create Opportunities Explore
explore: sf__opportunity {
  label: "Opportunities"
  sql_always_where: NOT ${sf__opportunity.is_deleted} ;;

  join: sf__account {
    type: left_outer
    sql_on: ${sf__opportunity.account_id} = ${sf__account.id} ;;
    relationship: many_to_one
  }

  join: account_owners {
    from: sf__user
    sql_on: ${sf__account.owner_id} = ${account_owners.id} ;;
    relationship: many_to_one
  }

  join: opportunity_owners {
    from: sf__user
    sql_on: ${sf__opportunity.owner_id} = ${opportunity_owners.id} ;;
    relationship: many_to_one
  }
}
