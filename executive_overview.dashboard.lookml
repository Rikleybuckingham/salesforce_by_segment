- dashboard: executive_overview
  title: Executive Overview
  layout: newspaper

  elements:

  - name: Company Performance
    type: text
    title_text: Company Performance
    row: 0
    col: 0
    width: 24
    height: 2

  - title: Current Customers
    name: Current Customers
    model: salesforce
    explore: sf_accounts
    type: single_value
    fields:
    - sf_accounts.name
    - owner.name
    - sf_accounts.seats_licensed
    - sf_accounts.annual_recurring_revenue
    - sf_accounts.renewal_date
    filters:
      sf_accounts.type: Customer
    sorts:
    - sf_accounts.name
    limit: 1000
    column_limit: 50
    dynamic_fields:
    - table_calculation: count
      label: Count
      expression: count(${sf_accounts.name})
      value_format:
      value_format_name: decimal_0
      _kind_hint: dimension
      _type_hint: number
    font_size: medium
    text_color: "#49719a"
    hidden_fields:
    - sf_accounts.name
    - sf_accounts.seats_licensed
    - sf_accounts.renewal_date
    - sf_accounts.annual_recurring_revenue
    - owner.name
    single_value_title: Current Customers
    row: 2
    col: 0
    width: 8
    height: 2

  - title: Total ARR
    name: Total ARR
    model: salesforce
    explore: sf_accounts
    type: single_value
    fields:
    - sf_accounts.name
    - sf_accounts.annual_recurring_revenue
    filters:
      sf_accounts.type: Customer
    sorts:
    - sf_accounts.name
    limit: 500
    dynamic_fields:
    - table_calculation: arr_sum
      label: ARR Sum
      expression: sum(${sf_accounts.annual_recurring_revenue})
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - sf_accounts.name
    - sf_accounts.annual_recurring_revenue
    row: 2
    col: 8
    width: 8
    height: 2

  - title: Average ACV
    name: Average ACV
    model: salesforce
    explore: sf_accounts
    type: single_value
    fields:
    - sf_accounts.name
    - sf_accounts.annual_recurring_revenue
    filters:
      sf_accounts.type: Customer
    sorts:
    - sf_accounts.name
    limit: 500
    dynamic_fields:
    - table_calculation: average_acv
      label: Average ACV
      expression: sum(${sf_accounts.annual_recurring_revenue})/count(${sf_accounts.annual_recurring_revenue})
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - sf_accounts.name
    - sf_accounts.annual_recurring_revenue
    row: 2
    col: 16
    width: 8
    height: 2

  - title: Churn Rate
    name: Churn Rate
    model: salesforce
    explore: sf_opportunities
    type: looker_line
    fields:
    - sf_opportunities.count
    - sf_opportunities.count_won
    - sf_opportunities.count_lost
    - sf_opportunities.close_year
    fill_fields:
    - sf_opportunities.close_year
    filters:
      sf_opportunities.type: Renewal
      sf_opportunities.is_closed: 'Yes'
      sf_opportunities.close_year: 4 years
    sorts:
    - sf_opportunities.close_year desc
    limit: 500
    dynamic_fields:
    - table_calculation: churn_rate
      label: Churn Rate
      expression: "${sf_opportunities.count_lost}/(${sf_opportunities.count_won}\
        \ + ${sf_opportunities.count_lost})"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - sf_opportunities.count_lost
    - sf_opportunities.count_won
    - sf_opportunities.count
    series_types: {}
    y_axes:
    - label:
      orientation: left
      series:
      - id: win_percent
        name: Win Percent
        axisId: win_percent
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label: Number of Renewals
      orientation: right
      series:
      - id: sf_opportunities.count
        name: Opportunities Count
        axisId: sf_opportunities.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    series_colors:
      sf_opportunities.count_won: "#559be6"
      win_percent: "#7accb2"
      sf_opportunities.count: "#559be6"
      churn_rate: "#559be6"
    row: 4
    col: 0
    width: 12
    height: 5

  - title: Yearly Net Growth
    name: Yearly Net Growth
    model: salesforce
    explore: sf_opportunities
    type: looker_line
    fields:
    - sf_opportunities.close_year
    - sf_opportunities.type
    - sf_opportunities.count_lost
    - sf_opportunities.count_won
    pivots:
    - sf_opportunities.type
    fill_fields:
    - sf_opportunities.close_year
    filters:
      sf_opportunities.is_closed: 'Yes'
      sf_opportunities.close_date: 4 years
      sf_opportunities.type: Renewal,New
    sorts:
    - sf_opportunities.close_year desc
    - sf_opportunities.type
    limit: 500
    dynamic_fields:
    - table_calculation: net_growth
      label: Net Growth
      expression: pivot_index(${sf_opportunities.count_won},1) - pivot_index(${sf_opportunities.count_lost},2)
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      _type_hint: number
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
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - sf_opportunities.count_won
    - sf_opportunities.count_lost
    series_colors:
      net_growth: "#559be6"
    row: 4
    col: 12
    width: 12
    height: 5

  - name: Sales Performance
    type: text
    title_text: Sales Performance
    row: 9
    col: 0
    width: 24
    height: 2

  - title: AVG Sales Cycle
    name: AVG Sales Cycle
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_accounts.name
    - sf_opportunities.opportunity_name
    - sf_opportunities.created_date
    - sf_opportunities.close_date
    filters:
      sf_opportunities.is_won: 'Yes'
      sf_opportunities.close_date: 12 months
      sf_opportunities.type: New
    sorts:
    - sf_opportunities.close_date
    limit: 500
    dynamic_fields:
    - table_calculation: sales_cycle_days
      label: Sales Cycle (days)
      expression: diff_days(${sf_opportunities.created_date},${sf_opportunities.close_date})
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: number
    - table_calculation: avg_sales_cycle
      label: AVG Sales Cycle
      expression: sum(${sales_cycle_days})/count(${sf_opportunities.close_date})
      value_format:
      value_format_name: decimal_0
      _kind_hint: dimension
      _type_hint: number
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - sf_opportunities.close_date
    - sales_cycle_days
    - sf_opportunities.created_date
    - sf_opportunities.opportunity_name
    - sf_accounts.name
    single_value_title: AVG Sales Cycle (days) Trailing 12mos
    row: 11
    col: 0
    width: 6
    height: 4

  - title: Quarterly Bookings Sum
    name: Quarterly Bookings Sum
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_accounts.name
    - sf_opportunities.opportunity_name
    - opportunity_owners.name
    - sf_opportunities.created_date
    - sf_opportunities.close_date
    - sf_opportunities.annual_contract_value
    - sf_opportunities.bookings_value
    filters:
      sf_opportunities.type: New
      sf_opportunities.is_won: 'Yes'
      sf_opportunities.close_fiscal_quarter: 1 fiscal quarters
    sorts:
    - sf_accounts.name
    limit: 500
    dynamic_fields:
    - table_calculation: sum_of_bookings
      label: Sum of Bookings
      expression: sum(${sf_opportunities.bookings_value})
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - sf_opportunities.bookings_value
    - sf_opportunities.annual_contract_value
    - sf_opportunities.close_date
    - sf_opportunities.created_date
    - opportunity_owners.name
    - sf_opportunities.opportunity_name
    - sf_accounts.name
    row: 11
    col: 6
    width: 6
    height: 4

  - title: Net New Customers
    name: Net New Customers
    model: salesforce
    explore: sf_opportunities
    type: looker_line
    fields:
    - sf_opportunities.close_fiscal_quarter
    - sf_opportunities.count_won
    fill_fields:
    - sf_opportunities.close_fiscal_quarter
    filters:
      sf_opportunities.type: New
      sf_opportunities.is_closed: 'Yes'
      sf_opportunities.close_date: 4 Fiscal Quarters
    sorts:
    - sf_opportunities.close_fiscal_quarter
    limit: 500
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
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      sf_opportunities.count_won: "#559be6"
    row: 15
    col: 0
    width: 12
    height: 4

  - title: New Pipeline Forecast
    name: New Pipeline Forecast
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.close_fiscal_quarter
    - sf_opportunities.sum_of_bookings_value
    - sf_opportunities.stage_name
    pivots:
    - sf_opportunities.stage_name
    fill_fields:
    - sf_opportunities.close_fiscal_quarter
    filters:
      sf_opportunities.stage_name: 01 - Prospect,02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won,07 - Closed Lost
      sf_opportunities.close_quarter: 1 quarter ago for 6 quarters
      sf_opportunities.type: New
      sf_opportunities.close_fiscal_quarter: 1 quarter ago for 6 quarters
    sorts:
    - sf_opportunities.stage_name 0
    - sf_opportunities.close_fiscal_quarter
    query_timezone: America/Los_Angeles
    stacking: normal
    hidden_series: [01 - Prospect]
    colors:
    - 'palette: Default'
    show_value_labels: false
    label_density: 21
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_labels:
      01 - Prospect - sf_opportunities.sum_of_bookings_value: Prospect
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf_opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf_opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf_opportunities.sum_of_bookings_value: Commit
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: Lost
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels:
    - Amount in Pipeline
    y_axis_tick_density: default
    show_x_axis_label: true
    x_axis_label: Close Quarter
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    ordering: none
    show_null_labels: false
    series_colors:
      01 - Prospect - sf_opportunities.sum_of_bookings_value: "#202c3a"
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf_opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf_opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf_opportunities.sum_of_bookings_value: "#9ae3cc"
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: "#d75c44"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 02 - Pipeline
        name: Pipeline
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 03 - Upside
        name: Upside
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 04 - Forecast
        name: Forecast
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 05 - Commit
        name: Commit
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 06 - Closed Won
        name: Won
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf_opportunities.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 11
    col: 12
    width: 12
    height: 8

  - title: New Opportunities Won/Lost
    name: New Opportunities Won/Lost
    model: salesforce
    explore: sf_opportunities
    type: looker_area
    fields:
    - sf_opportunities.count
    - sf_opportunities.close_fiscal_quarter
    - sf_opportunities.stage_name
    pivots:
    - sf_opportunities.stage_name
    fill_fields:
    - sf_opportunities.close_fiscal_quarter
    filters:
      sf_opportunities.close_fiscal_quarter: 8 fiscal quarters
      sf_opportunities.stage_name: 06 - Closed Won,07 - Closed Lost
      sf_opportunities.type: New
    sorts:
    - sf_opportunities.close_fiscal_quarter
    - sf_opportunities.stage_name
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
    x_axis_scale: ordinal
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
      Renewal - sf_opportunities.count: "#7accb2"
      Upgrade / Upsell - sf_opportunities.count: "#9ae3cc"
      New - sf_opportunities.count: "#5eb297"
      06 - Closed Won - sf_opportunities.count: "#7accb2"
      07 - Closed Lost - sf_opportunities.count: "#ed765f"
    series_types: {}
    series_labels:
      06 - Closed Won - sf_opportunities.count: Won
      07 - Closed Lost - sf_opportunities.count: Lost
    row: 19
    col: 0
    width: 12
    height: 8

  - title: New Business Won/Lost by Quarter
    name: New Business Won/Lost by Quarter
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.sum_of_bookings_value
    - sf_opportunities.stage_name
    - sf_opportunities.close_fiscal_quarter
    pivots:
    - sf_opportunities.stage_name
    fill_fields:
    - sf_opportunities.close_fiscal_quarter
    filters:
      sf_opportunities.stage_name: 01 - Prospect,06 - Closed Won,07 - Closed Lost,02 - Pipeline,03
        - Upside,04 - Forecast,05 - Commit
      sf_opportunities.close_fiscal_quarter: 8 fiscal quarters
      sf_opportunities.type: New
    sorts:
    - sf_opportunities.stage_name
    - sf_opportunities.close_fiscal_quarter
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
    x_axis_scale: ordinal
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
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: "#d75c44"
      01 - Prospect - sf_opportunities.sum_of_bookings_value: "#202c3a"
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf_opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf_opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf_opportunities.sum_of_bookings_value: "#9ae3cc"
    series_types: {}
    column_spacing_ratio:
    column_group_spacing_ratio:
    series_labels:
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: Lost
      01 - Prospect - sf_opportunities.sum_of_bookings_value: Prospect
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf_opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf_opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf_opportunities.sum_of_bookings_value: Commit
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 06 - Closed Won
        name: Won
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf_opportunities.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
    hidden_series:
    - 01 - Prospect
    - 02 - Pipeline
    - 03 - Upside
    - 04 - Forecast
    - 05 - Commit
    row: 19
    col: 12
    width: 12
    height: 8

  - name: Marketing Performance
    type: text
    title_text: Marketing Performance
    row: 27
    col: 0
    width: 24
    height: 2

  - title: Leads to Opportunties
    name: Leads to Opportunties
    model: salesforce
    explore: sf_leads
    type: looker_column
    fields:
    - sf_leads.count
    - sf_leads.currently_active_leads_count
    - sf_leads.net_mql_count
    - sf_leads.converted_to_opportunity_count
    - sf_leads.created_fiscal_quarter
    fill_fields:
    - sf_leads.created_fiscal_quarter
    filters:
      sf_leads.created_date: 8 quarters
    sorts:
    - sf_leads.created_fiscal_quarter
    limit: 500
    stacking: ''
    show_value_labels: true
    label_density: 3
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    colors:
    - 'palette: Default'
    label_color: []
    series_labels:
      sf_leads.count: Leads
      sf_opportunities.count_new_business: Opportunities
      sf_opportunities.count_new_business_won: Won Opportunities
      sf_leads.net_mql_count: MQLs
      sf_leads.converted_to_opportunity_count: Opportunities
      sf_opportunities.count_sql: SQLs
      sf_opportunities.count_won: Won Opportunities
      sf_leads.currently_active_leads_count: Active Leads
    show_dropoff: false
    series_colors:
      sf_opportunities.count_won: "#5eb297"
      sf_opportunities.count_sql: "#9ae3cc"
      sf_leads.count: "#435978"
      sf_leads.net_mql_count: "#70b3fc"
      sf_leads.converted_to_opportunity_count: "#9ae3cc"
      sf_leads.currently_active_leads_count: "#4281c3"
    series_types: {}
    hidden_series: []
    row: 29
    col: 0
    width: 12
    height: 8

  - title: Opportunities to Won
    name: Opportunities to Won
    model: salesforce
    explore: sf_leads
    type: looker_column
    fields:
    - sf_leads.created_fiscal_quarter
    - sf_opportunities.count
    - sf_opportunities.count_sql
    - sf_opportunities.count_won
    fill_fields:
    - sf_leads.created_fiscal_quarter
    filters:
      sf_leads.created_fiscal_quarter: 8 fiscal quarters
    sorts:
    - sf_leads.created_fiscal_quarter
    limit: 500
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      sf_leads.count: "#559be6"
      sf_opportunities.count: "#435978"
      sf_opportunities.count_sql: "#4281c3"
      sf_opportunities.count_won: "#5eb297"
    series_labels:
      sf_opportunities.count_sql: SQLs
      sf_opportunities.count: Opportunities
    column_spacing_ratio:
    column_group_spacing_ratio:
    row: 29
    col: 12
    width: 12
    height: 8

  - title: Leads by Source QTD
    name: Leads by Source QTD
    model: salesforce
    explore: sf_leads
    type: looker_column
    fields:
    - sf_leads.count
    - sf_leads.lead_source
    filters:
      sf_leads.created_fiscal_quarter: this fiscal quarter
    sorts:
    - sf_leads.count desc
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
      sf_leads.count: Leads
      sf_opportunities.count_new_business: Opportunities
      sf_opportunities.count_new_business_won: Won Opportunities
      sf_leads.net_mql_count: MQLs
      sf_leads.converted_to_opportunity_count: Opportunities
      sf_opportunities.count_sql: SQLs
      sf_opportunities.count_won: Won Opportunities
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: false
    series_colors:
      sf_opportunities.count_won: "#5eb297"
      sf_opportunities.count_sql: "#9ae3cc"
      sf_leads.count: "#559be6"
      sf_leads.net_mql_count: "#4281c3"
      sf_leads.converted_to_opportunity_count: "#70b3fc"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 37
    col: 0
    width: 12
    height: 8

  - title: Opportunities by Channel Partner QTD
    name: Opportunities by Channel Partner QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.channel_partner
    - sf_opportunities.count
    - sf_opportunities.count_sql
    filters:
      sf_opportunities.created_fiscal_quarter: this fiscal quarter
      sf_opportunities.type: New
    sorts:
    - sf_opportunities.count desc
    limit: 500
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      sf_opportunities.count: Opportunities
      sf_opportunities.count_sql: SQLs
      sf_opportunities.count_won: Won
    series_colors:
      sf_opportunities.count_won: "#5eb297"
      sf_opportunities.count: "#435978"
      sf_opportunities.count_sql: "#4281c3"
    hidden_series: []
    row: 37
    col: 12
    width: 12
    height: 8

  - name: Customer Performance
    type: text
    title_text: Customer Performance
    subtitle_text: ''
    row: 45
    col: 0
    width: 24
    height: 2

  - title: Renewal Forecast
    name: Renewal Forecast
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.stage_name
    - sf_opportunities.sum_of_bookings_value
    - sf_opportunities.close_fiscal_quarter
    pivots:
    - sf_opportunities.stage_name
    fill_fields:
    - sf_opportunities.close_fiscal_quarter
    filters:
      sf_opportunities.close_fiscal_quarter: 1 quarter ago for 6 quarters
      sf_opportunities.stage_name: 01 - Prospect,02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won,07 - Closed Lost
      sf_opportunities.type: Renewal
    sorts:
    - sf_opportunities.stage_name 0
    - sf_opportunities.close_fiscal_quarter
    query_timezone: America/Los_Angeles
    stacking: normal
    hidden_series: [01 - Prospect]
    colors:
    - 'palette: Default'
    show_value_labels: false
    label_density: 21
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_labels:
      01 - Prospect - sf_opportunities.sum_of_bookings_value: Prospect
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf_opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf_opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf_opportunities.sum_of_bookings_value: Commit
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: Lost
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels:
    - Amount in Pipeline
    y_axis_tick_density: default
    show_x_axis_label: true
    x_axis_label: Close Quarter
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    ordering: none
    show_null_labels: false
    series_colors:
      01 - Pipeline - sf_opportunities.sum_of_bookings_value: "#202c3a"
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf_opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf_opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf_opportunities.sum_of_bookings_value: "#9ae3cc"
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: "#d75c44"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 01 - Prospect
        name: Prospect
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 02 - Pipeline
        name: Pipeline
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 03 - Upside
        name: Upside
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 04 - Forecast
        name: Forecast
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 05 - Commit
        name: Commit
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 06 - Closed Won
        name: Won
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf_opportunities.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 47
    col: 0
    width: 12
    height: 10

  - title: Renewals Won/Lost by Quarter
    name: Renewals Won/Lost by Quarter
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.sum_of_bookings_value
    - sf_opportunities.stage_name
    - sf_opportunities.close_fiscal_quarter
    pivots:
    - sf_opportunities.stage_name
    fill_fields:
    - sf_opportunities.close_fiscal_quarter
    filters:
      sf_opportunities.stage_name: 06 - Closed Won,07 - Closed Lost,01 - Prospect,02 - Pipeline,03
        - Upside,04 - Forecast,05 - Commit
      sf_opportunities.close_fiscal_quarter: 8 fiscal quarters
      sf_opportunities.type: Renewal
    sorts:
    - sf_opportunities.stage_name
    - sf_opportunities.close_fiscal_quarter
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
    x_axis_scale: ordinal
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
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: "#d75c44"
      01 - Prospect - sf_opportunities.sum_of_bookings_value: "#202c3a"
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf_opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf_opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf_opportunities.sum_of_bookings_value: "#9ae3cc"
    series_types: {}
    column_spacing_ratio:
    column_group_spacing_ratio:
    series_labels:
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: Lost
      01 - Prospect - sf_opportunities.sum_of_bookings_value: Prospect
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf_opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf_opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf_opportunities.sum_of_bookings_value: Commit
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 06 - Closed Won
        name: Won
        axisId: sf_opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf_opportunities.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
    hidden_series:
    - 01 - Prospect
    - 02 - Pipeline
    - 03 - Upside
    - 04 - Forecast
    - 05 - Commit
    row: 47
    col: 12
    width: 12
    height: 10

  - name: Customer Running Total
    title: Customer Running Total
    model: salesforce
    explore: sf_opportunities
    type: looker_line
    fields: [sf_opportunities.close_year, sf_opportunities.count_won, sf_opportunities.count_lost,
      sf_opportunities.type]
    pivots: [sf_opportunities.type]
    fill_fields: [sf_opportunities.close_year]
    filters:
      sf_opportunities.close_year: before 0 minutes ago
      sf_opportunities.is_closed: 'Yes'
      sf_opportunities.type: New,Renewal
      sf_opportunities.contract_term_months: ">=3"
    sorts: [sf_opportunities.close_year, sf_opportunities.type 0]
    limit: 500
    dynamic_fields:
    - table_calculation: won
      label: Won
      expression: coalesce(${sf_opportunities.count_won},0)
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: lost
      label: Lost
      expression: coalesce(${sf_opportunities.count_lost},0)
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: yearly_net_customer_growth
      label: Yearly Net Customer Growth
      expression: pivot_index(${won},1) - pivot_index(${lost},2)
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      _type_hint: number
    - table_calculation: customer_running_total
      label: Customer Running Total
      expression: running_total(${yearly_net_customer_growth})
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      _type_hint: number
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: [sf_opportunities.count_won, sf_opportunities.count_lost, won,
      lost, yearly_net_customer_growth]
    series_colors:
      customer_running_total: "#559be6"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    row: 57
    col: 0
    width: 12
    height: 10

  - name: Current Customer Table
    title: Current Customer Table
    model: company_usage
    explore: usage_map
    type: table
    fields:
    - sf_accounts.account_name_link
    - sf_accounts.dms
    - sf_accounts.created_date
    - sf_accounts.renewal_date
    - sf_accounts.seats_licensed
    - sf_accounts.annual_recurring_revenue
    filters:
      sf_accounts.type: Customer
      usage_map.type: User
    sorts:
    - sf_accounts.account_name_link
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    series_labels:
    row: 57
    col: 12
    width: 12
    height: 10