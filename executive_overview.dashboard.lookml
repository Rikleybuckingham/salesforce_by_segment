- dashboard: executive_overview
  title: Executive Overview
  layout: newspaper

  elements:

  - title: Pipeline Forecast
    name: Pipeline Forecast
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.close_month
    - sf__opportunities.total_revenue
    - sf__opportunities.stage_name
    pivots:
    - sf__opportunities.stage_name
    fill_fields:
    - sf__opportunities.close_month
    filters:
      sf__opportunities.close_month: 9 months ago for 12 months
      sf__opportunities.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won,07 - Closed Lost
    sorts:
    - sf__opportunities.close_month
    - sf__opportunities.stage_name
    query_timezone: America/Los_Angeles
    stacking: normal
    hidden_series: []
    colors:
    - 'palette: Default'
    show_value_labels: false
    label_density: 21
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    series_labels:
      '0': Lost
      100 or Above: Won
      02 - Pipeline - sf__opportunities.total_revenue: Pipeline
      03 - Upside - sf__opportunities.total_revenue: Upside
      04 - Forecast - sf__opportunities.total_revenue: Forecast
      05 - Commit - sf__opportunities.total_revenue: Commit
      06 - Closed Won - sf__opportunities.total_revenue: Closed Won
      07 - Closed Lost - sf__opportunities.total_revenue: Closed Lost
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
      06 - Closed Won - sf__opportunities.total_revenue: "#5eb297"
      05 - Commit - sf__opportunities.total_revenue: "#9ae3cc"
      07 - Closed Lost - sf__opportunities.total_revenue: "#d75c44"
      04 - Forecast - sf__opportunities.total_revenue: "#70b3fc"
      03 - Upside - sf__opportunities.total_revenue: "#4281c3"
      02 - Pipeline - sf__opportunities.total_revenue: "#435978"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 10
    col: 0
    width: 12
    height: 8

  - title: This Quarter Lead to Win Funnel
    name: This Quarter Lead to Win Funnel
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.net_mql_count
    - sf__leads.converted_to_opportunity_count
    - sf__opportunities.count_active
    - sf__opportunities.count_won
    filters:
      sf__leads.created_date: this quarter
    sorts:
    - sf__leads.count desc
    limit: 500
    stacking: ''
    colors:
    - 'palette: Default'
    show_value_labels: true
    label_density: 10
    label_color: []
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_labels:
      sf__leads.count: Leads
      sf__opportunities.count_new_business: Opportunities
      sf__opportunities.count_new_business_won: Won Opportunities
      sf__leads.net_mql_count: MQLs
      sf__leads.converted_to_opportunity_count: Opportunities
      sf__opportunities.count_active: Active Opportunities
      sf__opportunities.count_won: Won Opportunities
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: true
    series_colors:
      sf__opportunities.count_won: "#5eb297"
      sf__opportunities.count_active: "#9ae3cc"
      sf__leads.count: "#435978"
      sf__leads.net_mql_count: "#4281c3"
      sf__leads.converted_to_opportunity_count: "#70b3fc"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 36
    col: 0
    width: 12
    height: 8

  - title: Last Year Lead to Win Funnel
    name: Last Year Lead to Win Funnel
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.net_mql_count
    - sf__leads.converted_to_opportunity_count
    - sf__opportunities.count_active
    - sf__opportunities.count_won
    filters:
      sf__leads.created_date: last year
    sorts:
    - sf__leads.count desc
    limit: 500
    stacking: ''
    colors:
    - 'palette: Default'
    show_value_labels: true
    label_density: 10
    label_color: []
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_labels:
      sf__leads.count: Leads
      sf__opportunities.count_new_business: Opportunities
      sf__opportunities.count_new_business_won: Won Opportunities
      sf__leads.net_mql_count: MQLs
      sf__leads.converted_to_opportunity_count: Opportunities
      sf__opportunities.count_active: Active Opportunities
      sf__opportunities.count_won: Won Opportunities
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: true
    series_colors:
      sf__opportunities.count_won: "#5eb297"
      sf__opportunities.count_active: "#9ae3cc"
      sf__leads.count: "#435978"
      sf__leads.net_mql_count: "#4281c3"
      sf__leads.converted_to_opportunity_count: "#70b3fc"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 28
    col: 12
    width: 12
    height: 8

  - title: This Year Lead to Win Funnel
    name: This Year Lead to Win Funnel
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.net_mql_count
    - sf__leads.converted_to_opportunity_count
    - sf__opportunities.count_active
    - sf__opportunities.count_won
    filters:
      sf__leads.created_date: this year
    sorts:
    - sf__leads.count desc
    limit: 500
    stacking: ''
    colors:
    - 'palette: Default'
    show_value_labels: true
    label_density: 10
    label_color: []
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_labels:
      sf__leads.count: Leads
      sf__opportunities.count_new_business: Opportunities
      sf__opportunities.count_new_business_won: Won Opportunities
      sf__leads.net_mql_count: MQLs
      sf__leads.converted_to_opportunity_count: Opportunities
      sf__opportunities.count_active: Active Opportunities
      sf__opportunities.count_won: Won Opportunities
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: true
    series_colors:
      sf__opportunities.count_won: "#5eb297"
      sf__opportunities.count_active: "#9ae3cc"
      sf__leads.count: "#435978"
      sf__leads.net_mql_count: "#4281c3"
      sf__leads.converted_to_opportunity_count: "#70b3fc"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 28
    col: 0
    width: 12
    height: 8

  - title: Last Quarter Lead to Win Funnel
    name: Last Quarter Lead to Win Funnel
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.net_mql_count
    - sf__leads.converted_to_opportunity_count
    - sf__opportunities.count_active
    - sf__opportunities.count_won
    filters:
      sf__leads.created_date: last quarter
    sorts:
    - sf__leads.count desc
    limit: 500
    stacking: ''
    colors:
    - 'palette: Default'
    show_value_labels: true
    label_density: 10
    label_color: []
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_labels:
      sf__leads.count: Leads
      sf__opportunities.count_new_business: Opportunities
      sf__opportunities.count_new_business_won: Won Opportunities
      sf__leads.net_mql_count: MQLs
      sf__leads.converted_to_opportunity_count: Opportunities
      sf__opportunities.count_active: Active Opportunities
      sf__opportunities.count_won: Won Opportunities
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: true
    series_colors:
      sf__opportunities.count_won: "#5eb297"
      sf__opportunities.count_active: "#9ae3cc"
      sf__leads.count: "#435978"
      sf__leads.net_mql_count: "#4281c3"
      sf__leads.converted_to_opportunity_count: "#70b3fc"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 36
    col: 12
    width: 12
    height: 8

  - title: Total Revenue Closed YTD
    name: Total Revenue Closed YTD
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.total_revenue
    filters:
      sf__opportunities.stage_name: "%Closed Won%"
      sf__opportunities.close_date: this year
    limit: 1000
    column_limit: 50
    font_size: medium
    text_color: black
    row: 2
    col: 16
    width: 8
    height: 2
  - title: New Opportunities Won YTD
    name: New Opportunities Won YTD
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.count_won
    filters:
      sf__opportunities.type: New
      sf__opportunities.close_date: this year
    font_size: medium
    text_color: black
    row: 4
    col: 0
    width: 6
    height: 2

  - title: New Opportunities Lost YTD
    name: New Opportunities Lost YTD
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.count_lost
    filters:
      sf__opportunities.type: New
      sf__opportunities.close_date: this year
    font_size: medium
    text_color: black
    row: 4
    col: 6
    width: 6
    height: 2

  - title: Current Customers
    name: Current Customers
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
    row: 2
    col: 0
    width: 8
    height: 2

  - title: Renewal Opportunities Won YTD
    name: Renewal Opportunities Won YTD
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.count_won
    filters:
      sf__opportunities.type: Renewal
      sf__opportunities.close_date: this year
    font_size: medium
    text_color: black
    row: 4
    col: 12
    width: 6
    height: 2

  - title: Renewal Opportunities Lost YTD
    name: Renewal Opportunities Lost YTD
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.count_lost
    filters:
      sf__opportunities.type: Renewal
      sf__opportunities.close_date: this year
    font_size: medium
    text_color: black
    row: 4
    col: 18
    width: 6
    height: 2

  - title: Total Revenue Closed QTD
    name: Total Revenue Closed QTD
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.sum_of_bookings_value
    filters:
      sf__opportunities.close_quarter: this quarter
      sf__opportunities.stage_name: "%Closed Won%"
    limit: 1000
    column_limit: 50
    font_size: medium
    text_color: black
    row: 2
    col: 8
    width: 8
    height: 2

  - title: Revenue Won by Quarter
    name: Revenue Won by Quarter
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.type
    - sf__opportunities.sum_of_bookings_value
    - sf__opportunities.close_quarter
    pivots:
    - sf__opportunities.type
    fill_fields:
    - sf__opportunities.close_quarter
    filters:
      sf__opportunities.stage_name: 06 - Closed Won
      sf__opportunities.close_date: 3 years
    sorts:
    - sf__opportunities.close_quarter
    - sf__opportunities.type 0
    limit: 500
    stacking: normal
    show_value_labels: false
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
    show_null_points: true
    point_style: none
    interpolation: linear
    series_colors:
      New - sf__opportunities.sum_of_bookings_value: "#435978"
      Renewal - sf__opportunities.sum_of_bookings_value: "#4281c3"
      Upgrade / Upsell - sf__opportunities.sum_of_bookings_value: "#70b3fc"
    series_types: {}
    column_spacing_ratio:
    column_group_spacing_ratio:
    row: 10
    col: 12
    width: 12
    height: 8

  - title: Current Opportunities Table
    name: Current Opportunities Table
    model: salesforce
    explore: sf__opportunities
    type: table
    fields:
    - sf__accounts.account_name_link
    - sf__opportunities.opportunity_name
    - opportunity_owners.name
    - sf__opportunities.stage_name
    - sf__opportunities.type
    - sf__opportunities.created_date
    - sf__opportunities.close_date
    - sf__opportunities.bookings_value
    filters:
      sf__opportunities.is_lost: 'No'
      sf__opportunities.is_won: 'No'
      sf__opportunities.close_date: after 0 minutes ago
    sorts:
    - sf__opportunities.close_date
    limit: 500
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    table_theme: gray
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    series_labels: {
      sf__accounts.account_name_link: 'Company'
    }
    row: 46
    col: 0
    width: 12
    height: 10

  - name: Company Status
    type: text
    title_text: Company Status
    row: 0
    col: 0
    width: 24
    height: 2

  - name: Sales Status
    type: text
    title_text: Sales Status
    row: 8
    col: 0
    width: 24
    height: 2

  - name: Marketing Status
    type: text
    title_text: Marketing Status
    row: 26
    col: 0
    width: 24
    height: 2

  - title: Deals Won by Quarter
    name: Deals Won by Quarter
    model: salesforce
    explore: sf__opportunities
    type: looker_area
    fields:
    - sf__opportunities.count
    - sf__opportunities.type
    - sf__opportunities.close_quarter
    pivots:
    - sf__opportunities.type
    fill_fields:
    - sf__opportunities.close_quarter
    filters:
      sf__opportunities.close_month: 3 years
      sf__opportunities.stage_name: "%Closed Won%"
      sf__opportunities.type: New,Renewal,Upgrade / Upsell
    sorts:
    - sf__opportunities.type
    - sf__opportunities.close_quarter desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
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
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_colors:
      Renewal - sf__opportunities.count: "#7accb2"
      Upgrade / Upsell - sf__opportunities.count: "#9ae3cc"
      New - sf__opportunities.count: "#5eb297"
    series_types: {}
    row: 18
    col: 0
    width: 12
    height: 8

  - title: Deals Lost by Quarter
    name: Deals Lost by Quarter
    model: salesforce
    explore: sf__opportunities
    type: looker_area
    fields:
    - sf__opportunities.type
    - sf__opportunities.close_quarter
    - sf__opportunities.count_lost
    pivots:
    - sf__opportunities.type
    fill_fields:
    - sf__opportunities.close_quarter
    filters:
      sf__opportunities.close_month: 3 years
      sf__opportunities.type: New,Renewal,Upgrade / Upsell
    sorts:
    - sf__opportunities.type
    - sf__opportunities.close_quarter desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
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
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_colors:
      Renewal - sf__opportunities.count: "#4281c3"
      Upgrade / Upsell - sf__opportunities.count: "#70b3fc"
      New - sf__opportunities.count: "#435978"
      New - sf__opportunities.count_lost: "#d75c44"
      Renewal - sf__opportunities.count_lost: "#ed765f"
      Upgrade / Upsell - sf__opportunities.count_lost: "#fa8d78"
    series_types: {}
    hidden_series: []
    row: 18
    col: 12
    width: 12
    height: 8

  - name: Current Opportunities and Sales Rep Roster
    type: text
    title_text: Current Opportunities and Sales Rep Roster
    subtitle_text: Click on a sales representative name to view their detailed metrics
    row: 44
    col: 0
    width: 24
    height: 2

  - title: Agent Count
    name: Agent Count
    model: company_usage
    explore: usage__map
    type: single_value
    fields:
    - usage__delivery.unique_agent_count
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    series_types: {}
    row: 6
    col: 0
    width: 6
    height: 2

  - title: Delivery Count
    name: Delivery Count
    model: company_usage
    explore: usage__map
    type: single_value
    fields:
    - usage__delivery.count
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    series_types: {}
    row: 6
    col: 6
    width: 6
    height: 2

  - title: Unique Content Count
    name: Unique Content Count
    model: company_usage
    explore: usage__map
    type: single_value
    fields:
    - usage__delivery.unique_content
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    series_types: {}
    row: 6
    col: 12
    width: 6
    height: 2

  - title: Global Peering Percentage
    name: Global Peering Percentage
    model: company_usage
    explore: usage__map
    type: single_value
    fields:
    - usage__delivery.origin_bytes_sum
    - usage__delivery.peer_bytes_sum
    limit: 500
    dynamic_fields:
    - table_calculation: peering
      label: Peering
      expression: "${usage__delivery.peer_bytes_sum}/(${usage__delivery.peer_bytes_sum}+${usage__delivery.origin_bytes_sum})"
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    series_types: {}
    hidden_fields:
    - usage__delivery.origin_bytes_sum
    - usage__delivery.peer_bytes_sum
    row: 6
    col: 18
    width: 6
    height: 2

  - title: Rep Roster
    name: rep_roster
    type: table
    model: salesforce
    explore: sf__opportunities
    dimensions: [opportunity_owners.name]
    measures: [sf__opportunities.average_revenue_won, sf__opportunities.average_revenue_lost, sf__opportunities.total_pipeline_revenue,
      sf__opportunities.win_percentage]
    listen:
    filters:
      opportunity_owners.name: -NULL
      sf__opportunities.count_won: '>0'
    sorts:
      - sf__opportunities.total_pipeline_revenue desc
    #query_timezone: America/Los_Angeles
    stacking: ''
    colors: ['#635189', '#b3a0dd']
    show_value_labels: true
    table_theme: gray
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    show_view_names: false
    x_padding_right: 15
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_orientation: [right]
    x_axis_label_rotation: 0
    show_null_labels: false
    y_axis_gridlines: true
    y_axis_tick_density_custom: 5
    ordering: none
    show_row_numbers: true
    row: 46
    col: 12
    width: 12
    height: 10
