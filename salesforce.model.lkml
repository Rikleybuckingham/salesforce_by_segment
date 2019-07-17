connection: "aws-postgresql"

# include Salesforce views
include: "sf__*.view"
include: "usage__map.view"
include: "accounts.view"
include: "opportunities.view"
include: "subscriptions.view"
include: "quotes.view"

# include the dashboards
include: "*.dashboard"

fiscal_month_offset: -9

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

  join: usage__map {
    type: left_outer
    sql_on: ${sf__account.id} = ${usage__map.salesforce_id} AND ${sf__account.dms} = ${usage__map.dms} ;;
    relationship: one_to_one
    view_label: "IDs"
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

  join: usage__map {
    sql_on: ${sf__lead.converted_account_id} = ${usage__map.salesforce_id} ;;
    relationship: many_to_one
    view_label: "IDs"
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

  join: usage__map {
    sql_on: ${sf__opportunity.account_id} = ${usage__map.salesforce_id} ;;
    relationship: many_to_one
    view_label: "IDs"
  }
}

#Create Contracts Explore
explore: sf__contracts {
  label: "Contracts"
  group_label: "CPQ"
  sql_always_where: NOT ${sf__contracts.is_deleted} ;;

  join: accounts {
    type: full_outer
    relationship: many_to_one
    sql_on: ${sf__contracts.account_id} = ${accounts.id} ;;
  }

  join: opportunities {
    type: left_outer
    relationship: one_to_one
    sql_on: ${sf__contracts.id} = ${opportunities.contract_id} ;;
  }
}

#Create Subscriptions Explore
explore: subscriptions {
  label: "Subscriptions"
  group_label: "CPQ"
  sql_always_where: NOT ${subscriptions.is_deleted} ;;

  join: accounts {
    sql_on: ${subscriptions.sbqq_account_c} = ${accounts.id} ;;
    type: full_outer
    relationship: many_to_one
  }
}

#Create Quotes Explore
explore: quotes {
  label: "Quotes"
  group_label: "CPQ"
  sql_always_where: NOT ${quotes.is_deleted} ;;

  join: accounts {
    sql_on: ${quotes.sbqq_account_c}=${accounts.id} ;;
    type: full_outer
    relationship: many_to_one
  }
}
