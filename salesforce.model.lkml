connection: "aws-postgresql"

# include Salesforce views
include: "sf_*.view"
include: "usage_map.view"
include: "accounts.view"
include: "opportunities.view"
include: "sf_subscriptions.view"
include: "quotes.view"
include: "quote_lines.view"

# include the dashboards
include: "*.dashboard"

fiscal_month_offset: -9

# Create Accounts Explore
explore: sf_accounts {
  label: "Accounts"
  sql_always_where: NOT ${sf_accounts.is_deleted}
    ;;

  join: owner {
    from: sf_user
    sql_on: ${sf_accounts.owner_id} = ${owner.id} ;;
    relationship: many_to_one
    view_label: "Account Owner"
  }

  join: sf_opportunities {
    type: left_outer
    sql_on: ${sf_opportunities.account_id} = ${sf_accounts.id} ;;
    relationship: many_to_one
    view_label: "Opportunities"
  }

  join: sf_leads {
    type: left_outer
    sql_on: ${sf_accounts.id} = ${sf_leads.converted_account_id} ;;
    relationship: one_to_many
    view_label: "Leads"
  }

  join: usage_map {
    type: left_outer
    sql_on: ${sf_accounts.id} = ${usage_map.salesforce_id} AND ${sf_accounts.dms} = ${usage_map.dms} ;;
    relationship: one_to_one
    view_label: "IDs"
  }
}

# Create Leads Explore
explore: sf_leads {
  label: "Leads"
  sql_always_where: NOT ${sf_leads.is_deleted} ;;

  join: lead_owners {
    from: sf_user
    sql_on: ${sf_leads.owner_id} = ${lead_owners.id} ;;
    relationship: many_to_one
    view_label: "Lead Owners"
  }

  join: sf_accounts {
    sql_on: ${sf_leads.converted_account_id} = ${sf_accounts.id} ;;
    relationship: many_to_one
    view_label: "Accounts"
  }

  join: account_owners {
    from: sf_user
    sql_on: ${sf_accounts.owner_id} = ${account_owners.id} ;;
    relationship: many_to_one
    view_label: "Account Owners"
  }

  join: sf_opportunities {
    sql_on: ${sf_leads.converted_opportunity_id} = ${sf_opportunities.id} ;;
    relationship: many_to_one
    view_label: "Opportunities"
  }

  join: opportunity_owners {
    from: sf_user
    sql_on: ${sf_opportunities.owner_id} = ${opportunity_owners.id} ;;
    relationship: many_to_one
    view_label: "Opportunity Owners"
  }

  join: usage_map {
    sql_on: ${sf_leads.converted_account_id} = ${usage_map.salesforce_id} ;;
    relationship: many_to_one
    view_label: "IDs"
  }
}

# Create Opportunities Explore
explore: sf_opportunities {
  label: "Opportunities"
  sql_always_where: NOT ${sf_opportunities.is_deleted} ;;

  join: sf_accounts {
    type: left_outer
    sql_on: ${sf_opportunities.account_id} = ${sf_accounts.id} ;;
    relationship: many_to_one
  }

  join: account_owners {
    from: sf_user
    sql_on: ${sf_accounts.owner_id} = ${account_owners.id} ;;
    relationship: many_to_one
  }

  join: opportunity_owners {
    from: sf_user
    sql_on: ${sf_opportunities.owner_id} = ${opportunity_owners.id} ;;
    relationship: many_to_one
  }

  join: usage_map {
    sql_on: ${sf_opportunities.account_id} = ${usage_map.salesforce_id} ;;
    relationship: many_to_one
    view_label: "IDs"
  }
}

#Create CPQ Explore
explore: accounts {
  label: "Customer Accounts"
  view_label: "Customer Accounts"
  group_label: "CPQ"

  join: sf_contracts {
    type: left_outer
    relationship: one_to_many
    sql_on: ${accounts.id} = ${sf_contracts.account_id} ;;
  }

  join: quotes {
    type: left_outer
    relationship: one_to_many
    sql_on: ${sf_contracts.sbqq_quote_c}=${quotes.id} ;;
  }

  join: opportunities {
    type: left_outer
    relationship: one_to_one
    sql_on: ${sf_contracts.id} = ${opportunities.contract_id} ;;
  }

  join: owner {
    from: sf_user
    sql_on: ${accounts.owner_id} = ${owner.id} ;;
    relationship: many_to_one
    view_label: "Account Owner"
  }

  join: sf_subscriptions {
    type: left_outer
    relationship: one_to_many
    sql_on: ${sf_contracts.id}=${sf_subscriptions.sbqq_contract_c} ;;
  }
}

#Create Subscriptions Explore
explore: sf_subscriptions {
  label: "Subscriptions"
  group_label: "CPQ"
  sql_always_where: NOT ${sf_subscriptions.is_deleted} ;;

  join: accounts {
    sql_on: ${sf_subscriptions.sbqq_account_c} = ${accounts.id} ;;
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

#Create Quote Lines Explore
explore: quote_lines {
  label: "Quote Lines"
  group_label: "CPQ"
  sql_always_where: NOT ${quote_lines.is_deleted} ;;
}

#Create Renewal Explore
explore: renewals {
  view_name: sf_contracts
  label: "Renewals"
  group_label: "CPQ"
  sql_always_where:  NOT ${sf_contracts.is_deleted} ;;
  #Join Opportunities
  join: opportunities {
    sql_on: ${sf_contracts.sbqq_opportunity_c}=${opportunities.id} ;;
    type: left_outer
    relationship: many_to_one
  }
  #Join Subscriptions
  join: sf_subscriptions {
    sql_on: ${sf_contracts.id}=${sf_subscriptions.sbqq_contract_c} ;;
    type: left_outer
    relationship: one_to_many
  }
}

#Base Explores
explore: opportunities {
  label: "Opportunities"
  group_label: "Base"
  sql_always_where: NOT ${opportunities.is_deleted} ;;
}
