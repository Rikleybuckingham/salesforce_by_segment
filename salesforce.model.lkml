connection: "segment_sources"

# include base (generated) views
include: "sfbase__*.view"

# include extended views
include: "sf__*.view"

# include the dashboards
include: "sf__*.dashboard"
include: "*.dashboard"

# Create Accounts Explore
explore: sf__accounts {
  label: "Accounts"
  sql_always_where: NOT ${sf__accounts.is_deleted}
    ;;

  join: owner {
    from: sf__users
    sql_on: ${sf__accounts.owner_id} = ${owner.id} ;;
    relationship: many_to_one
    view_label: "Account Owner"
  }

  join: sf__opportunities {
    type: left_outer
    sql_on: ${sf__opportunities.account_id} = ${sf__accounts.id} ;;
    relationship: many_to_one
    view_label: "Opportunities"
  }

  join: sf__leads {
    type: left_outer
    sql_on: ${sf__accounts.id} = ${sf__leads.converted_account_id} ;;
    relationship: one_to_many
    view_label: "Leads"
  }
}

# Create Leads Explore
explore: sf__leads {
  label: "Leads"
  sql_always_where: NOT ${sf__leads.is_deleted} ;;

  join: lead_owners {
    from: sf__users
    sql_on: ${sf__leads.owner_id} = ${lead_owners.id} ;;
    relationship: many_to_one
    view_label: "Lead Owners"
  }

  join: sf__accounts {
    sql_on: ${sf__leads.converted_account_id} = ${sf__accounts.id} ;;
    relationship: many_to_one
    view_label: "Accounts"
  }

  join: account_owners {
    from: sf__users
    sql_on: ${sf__accounts.owner_id} = ${account_owners.id} ;;
    relationship: many_to_one
    view_label: "Account Owners"
  }

  join: sf__opportunities {
    sql_on: ${sf__leads.converted_opportunity_id} = ${sf__opportunities.id} ;;
    relationship: many_to_one
    view_label: "Opportunities"
  }

  join: opportunity_owners {
    from: sf__users
    sql_on: ${sf__opportunities.owner_id} = ${opportunity_owners.id} ;;
    relationship: many_to_one
    view_label: "Opportunity Owners"
  }
}

# Create Opportunities Explore
explore: sf__opportunities {
  label: "Opportunities"
  sql_always_where: NOT ${sf__opportunities.is_deleted} ;;

  join: sf__accounts {
    type: left_outer
    sql_on: ${sf__opportunities.account_id} = ${sf__accounts.id} ;;
    relationship: many_to_one
  }

  join: account_owners {
    from: sf__users
    sql_on: ${sf__accounts.owner_id} = ${account_owners.id} ;;
    relationship: many_to_one
  }

  join: opportunity_owners {
    from: sf__users
    sql_on: ${sf__opportunities.owner_id} = ${opportunity_owners.id} ;;
    relationship: many_to_one
  }
}
