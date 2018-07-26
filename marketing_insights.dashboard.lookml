- dashboard: marketing_insights
  title: Marketing Insights
  layout: newspaper
  elements:
  - name: YTD Leads to Win
    title: YTD Leads to Win
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.net_mql_count
    - sf__leads.converted_to_account_count
    - sf__leads.converted_to_opportunity_count
    - sf__opportunities.count_won
    filters:
      sf__leads.acquisition_program: "-OP-Lead Lifecycle - New Customer Acquisition,-OP-ABM\
        \ Product Interest,-OP-Scoring-Inside Sales,-LI 2017 Eloqua Only Records,-LI\
        \ 2018-04-25 West Brunch Frankfurt,-CRM Lead,-CS 2017-05 Emedia,-ES 2017-10-09\
        \ Arkadin Kollective Soho Promo,-ES 2018 BT Follow Up,-Pre-Marketo Person,-WF\
        \ Partner Deal Registration Form,-WF Partner Prospect"
      sf__leads.created_date: this year
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    row: 0
    col: 0
    width: 12
    height: 8
  - name: 2017 Leads to Win
    title: 2017 Leads to Win
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.net_mql_count
    - sf__leads.converted_to_account_count
    - sf__leads.converted_to_opportunity_count
    - sf__opportunities.count_won
    filters:
      sf__leads.acquisition_program: "-OP-Lead Lifecycle - New Customer Acquisition,-OP-ABM\
        \ Product Interest,-OP-Scoring-Inside Sales,-LI 2017 Eloqua Only Records,-LI\
        \ 2018-04-25 West Brunch Frankfurt,-CRM Lead,-CS 2017-05 Emedia,-ES 2017-10-09\
        \ Arkadin Kollective Soho Promo,-ES 2018 BT Follow Up,-Pre-Marketo Person,-WF\
        \ Partner Deal Registration Form,-WF Partner Prospect"
      sf__leads.created_date: 2017/01/01 to 2017/12/31
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    row: 0
    col: 12
    width: 12
    height: 8
  - name: Qualified leads Table
    title: Qualified leads Table
    model: salesforce
    explore: sf__leads
    type: table
    fields:
    - lead_owners.name
    - opportunity_owners.name
    - sf__leads.company
    - sf__leads.mql_date
    - sf__opportunities.created_date
    - sf__leads.status
    - sf__leads.average_opportunity_velocity
    - sf__leads.days_mql_open
    filters:
      sf__leads.mql_date: after 2017/06/01
      sf__leads.status: "-Junk,-Disqualified,-Existing Customer,-Hold for Future Action,-Unqualified\
        \ Prospect,-Recycled"
      sf__leads.company: -%"session^_key":"5.X4COxCPeyJj6CQ.1516399649.%
    sorts:
    - sf__opportunities.created_date
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    row: 8
    col: 0
    width: 24
    height: 9
