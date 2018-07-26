- dashboard: marketing_overview
  title: Marketing Overview
  layout: newspaper
  elements:
  - title: Total Active Customers
    name: Total Active Customers
    model: salesforce
    explore: sf__accounts
    type: single_value
    fields:
    - sf__accounts.count
    filters:
      sf__accounts.type: '"Customer"'
    sorts:
    - sf__accounts.count desc
    font_size: medium
    text_color: "#49719a"
    row: 0
    col: 0
    width: 5
    height: 6
  - title: Average Deal Size (Quarter-to-Date)
    name: Average Deal Size (Quarter-to-Date)
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.average_deal_size
    filters:
      sf__opportunities.close_quarter: this quarter
      sf__opportunities.stage_name: "%Closed Won%"
    sorts:
    - sf__opportunities.average_deal_size desc
    font_size: medium
    text_color: black
    row: 0
    col: 10
    width: 5
    height: 6
  - name: Won Opportunities Chart
    title: Won Opportunities Chart
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.close_month
    - sf__opportunities.total_revenue
    - sf__opportunities.count_won
    filters:
      sf__opportunities.close_month: 9 months ago for 12 months
      sf__opportunities.is_won: 'Yes'
    sorts:
    - sf__opportunities.close_month
    - sf__opportunities.probability_group__sort_
    limit: 1000
    column_limit: 50
    stacking: ''
    hidden_series: []
    colors:
    - 'palette: Mixed Dark'
    show_value_labels: true
    label_density: 21
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    series_labels:
      '0': Lost
      100 or Above: Won
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels:
    - Amount in Pipeline
    y_axis_tick_density: default
    show_x_axis_label: true
    x_axis_label: Opportunity Close Month
    show_x_axis_ticks: true
    x_axis_datetime_label: "%b %y"
    x_axis_scale: ordinal
    ordering: none
    show_null_labels: false
    limit_displayed_rows: false
    y_axes:
    - label: Total Revenue Won
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf__opportunities.total_revenue
        name: Total Revenue
        axisId: sf__opportunities.total_revenue
    - label: Won Opportunities
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf__opportunities.count_won
        name: Count Won
        axisId: sf__opportunities.count_won
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors: {}
    row: 30
    col: 0
    width: 12
    height: 9
  - title: Deals Closed by Month
    name: Deals Closed by Month
    model: salesforce
    explore: sf__opportunities
    type: looker_area
    fields:
    - sf__opportunities.close_month
    - sf__opportunities.count
    filters:
      sf__opportunities.close_month: before tomorrow
      sf__opportunities.stage_name: "%Closed Won%"
    sorts:
    - sf__opportunities.close_month
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear
    colors:
    - 'palette: Mixed Dark'
    series_colors: {}
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_null_points: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 21
    col: 0
    width: 12
    height: 9
  - title: Pipeline Forecast
    name: Pipeline Forecast
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.probability_group
    - sf__opportunities.close_month
    - sf__opportunities.total_revenue
    pivots:
    - sf__opportunities.probability_group
    filters:
      sf__opportunities.close_month: 9 months ago for 12 months
    sorts:
    - sf__opportunities.probability_group
    - sf__opportunities.close_month
    - sf__opportunities.probability_group__sort_
    query_timezone: America/Los_Angeles
    stacking: normal
    hidden_series:
    - Under 20%
    colors:
    - 'palette: Mixed Dark'
    show_value_labels: true
    label_density: 21
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    series_labels:
      '0': Lost
      100 or Above: Won
      Above 80% - 1 - sf__opportunities.total_revenue: Above 80%
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels:
    - Amount in Pipeline
    y_axis_tick_density: default
    show_x_axis_label: true
    x_axis_label: Opportunities Close Month
    show_x_axis_ticks: true
    x_axis_datetime_label: "%b %y"
    x_axis_scale: ordinal
    ordering: none
    show_null_labels: false
    series_colors:
      60 - 80% - 2 - sf__opportunities.total_revenue: "#b2df8a"
      Above 80% - 1 - sf__opportunities.total_revenue: "#33a02c"
      20 - 40% - 4 - sf__opportunities.total_revenue: "#a6cee3"
      Under 20% - 5 - sf__opportunities.total_revenue: "#1f78b4"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 21
    col: 12
    width: 12
    height: 9
  - name: Pipeline Stage Pie Chart
    title: Pipeline Stage Pie Chart
    model: salesforce
    explore: sf__opportunities
    type: looker_pie
    fields:
    - sf__opportunities.stage_name
    - sf__opportunities.total_pipeline_revenue
    filters:
      sf__opportunities.stage_name: "-08 - Disqualified,-09-Duplicate Remove,-07 -\
        \ Closed Lost"
    sorts:
    - sf__opportunities.stage_name desc
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors: 'palette: Mixed Dark'
    series_colors:
      05 - Commit: "#b2df8a"
      04 - Forecast: "#a6cee3"
      03 - Upside: "#1f78b4"
      02 - Pipeline: "#cab2d6"
      01 - Prospect: "#6a3d9a"
      06 - Closed Won: "#33a02c"
    row: 0
    col: 15
    width: 9
    height: 6
  - name: Sales Stage Velocity
    title: Sales Stage Velocity
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.average_account_velocity
    - sf__leads.average_contact_velocity
    - sf__leads.average_opportunity_velocity
    filters:
      sf__leads.created_date: ''
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    colors:
    - 'palette: Mixed Dark'
    series_colors:
      sf__opportunities.average_lost_velocity: "#fb9a99"
    series_labels:
      sf__leads.average_account_velocity: Accounts
      sf__leads.average_contact_velocity: Contacts
      sf__leads.average_opportunity_velocity: Opportunities
      sf__opportunities.average_won_velocity: Won
      sf__opportunities.average_lost_velocity: Lost
    y_axes:
    - label: Velocity in Days
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: sf__leads.average_account_velocity
        name: Accounts
        axisId: sf__leads.average_account_velocity
      - id: sf__leads.average_contact_velocity
        name: Contacts
        axisId: sf__leads.average_contact_velocity
      - id: sf__leads.average_opportunity_velocity
        name: Opportunities
        axisId: sf__leads.average_opportunity_velocity
      - id: sf__opportunities.average_won_velocity
        name: Won
        axisId: sf__opportunities.average_won_velocity
      - id: sf__opportunities.average_lost_velocity
        name: Lost
        axisId: sf__opportunities.average_lost_velocity
    hidden_series:
    - sf__opportunities.average_lost_velocity
    series_types: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    row: 6
    col: 12
    width: 12
    height: 9
  - name: Converted Opportunity Velocity
    title: Converted Opportunity Velocity
    model: salesforce
    explore: sf__opportunities
    type: looker_bar
    fields:
    - sf__opportunities.average_won_velocity
    - sf__opportunities.average_lost_velocity
    filters:
      sf__opportunities.created_date: this quarter
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 23
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
    value_labels: legend
    label_type: labPer
    show_dropoff: false
    colors:
    - 'palette: Mixed Dark'
    series_colors:
      sf__opportunities.count_lost: "#fb9a99"
      sf__opportunities.average_won_velocity: "#b2df8a"
      sf__opportunities.average_lost_velocity: "#fb9a99"
    hidden_series:
    - sf__opportunities.count_lost
    series_types: {}
    x_axis_label: ''
    y_axes:
    - label: Days
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf__opportunities.average_won_velocity
        name: Average Won Velocity
        axisId: sf__opportunities.average_won_velocity
      - id: sf__opportunities.average_lost_velocity
        name: Average Lost Velocity
        axisId: sf__opportunities.average_lost_velocity
    row: 15
    col: 12
    width: 12
    height: 6
  - name: Open to Converted Opportunities
    title: Open to Converted Opportunities
    model: salesforce
    explore: sf__opportunities
    type: looker_bar
    fields:
    - sf__opportunities.count
    - sf__opportunities.count_open
    - sf__opportunities.count_won
    - sf__opportunities.count_lost
    filters:
      sf__opportunities.created_date: this quarter
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 23
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
    value_labels: legend
    label_type: labPer
    show_dropoff: false
    colors:
    - 'palette: Mixed Dark'
    series_colors:
      sf__opportunities.count_lost: "#fb9a99"
    hidden_series:
    - sf__opportunities.count_lost
    series_types: {}
    row: 15
    col: 0
    width: 12
    height: 6
  - title: Lead to Win Funnel (Quarter-to-Date)
    name: Lead to Win Funnel (Quarter-to-Date)
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.converted_to_account_count
    - sf__leads.converted_to_contact_count
    - sf__leads.converted_to_opportunity_count
    filters:
      sf__leads.created_date: this quarter
      sf__leads.status: Qualified,Existing Customer,Recycled,Working,New
    sorts:
    - sf__leads.count desc
    limit: 500
    stacking: ''
    colors:
    - 'palette: Mixed Dark'
    show_value_labels: true
    label_density: 10
    label_color:
    - "#635189"
    - "#a2dcf3"
    - "#1ea8df"
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    series_labels:
      sf__leads.count: Leads
      sf__opportunities.count_new_business: Opportunities
      sf__opportunities.count_new_business_won: Won Opportunities
      sf__leads.converted_to_account_count: Accounts
      sf__leads.converted_to_contact_count: Contacts
      sf__leads.converted_to_opportunity_count: Opportunities
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: true
    series_colors: {}
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf__leads.count
        name: Leads
        axisId: sf__leads.count
      - id: sf__leads.converted_to_account_count
        name: Sf Leads Converted to Account Count
        axisId: sf__leads.converted_to_account_count
      - id: sf__leads.converted_to_contact_count
        name: Sf Leads Converted to Contact Count
        axisId: sf__leads.converted_to_contact_count
      - id: sf__leads.converted_to_opportunity_count
        name: Sf Leads Converted to Opportunity Count
        axisId: sf__leads.converted_to_opportunity_count
    hide_legend: false
    row: 6
    col: 0
    width: 12
    height: 9
  - title: Total Revenue Closed (Quarter-to-Date)
    name: Total Revenue Closed (Quarter-to-Date)
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.sum_of_bookings_value
    filters:
      sf__opportunities.stage_name: "%Closed Won%"
      sf__opportunities.close_quarter: 1 quarters
    limit: 1000
    column_limit: 50
    font_size: medium
    text_color: black
    show_comparison: false
    row: 0
    col: 5
    width: 5
    height: 6
  - title: Rep Roster By Average Annual Revenue and Total Pipeline Revenue
    name: Rep Roster By Average Annual Revenue and Total Pipeline Revenue
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - opportunity_owners.name
    - sf__opportunities.total_pipeline_revenue
    - sf__opportunities.average_revenue_won
    filters:
      opportunity_owners.name: "-NULL"
      sf__opportunities.count_won: ">0"
      sf__opportunities.close_date: this year
    sorts:
    - sf__opportunities.average_revenue_won desc
    limit: 12
    stacking: ''
    colors:
    - 'palette: Mixed Dark'
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    show_view_names: false
    x_padding_right: 15
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_orientation:
    - right
    x_axis_label_rotation: 0
    show_null_labels: false
    series_colors:
      sf__opportunities.average_revenue_won: "#33a02c"
      sf__opportunities.total_pipeline_revenue: "#b2df8a"
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Sales Representatives (Hover for Name)
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf__opportunities.average_revenue_won
        name: Average Revenue (Closed/Won)
        axisId: sf__opportunities.average_revenue_won
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf__opportunities.total_pipeline_revenue
        name: Total Pipeline Revenue
        axisId: sf__opportunities.total_pipeline_revenue
    row: 30
    col: 12
    width: 12
    height: 9
