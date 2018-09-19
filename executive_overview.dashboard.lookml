- dashboard: executive_overview
  title: Executive Overview
  layout: newspaper

  elements:

  - title: Current Customers
    name: Current Customers
    model: salesforce
    explore: sf__accounts
    type: single_value
    fields:
    - sf__accounts.name
    - owner.name
    - sf__accounts.seats_licensed
    - sf__accounts.annual_recurring_revenue
    - sf__accounts.renewal_date
    filters:
      sf__accounts.type: Customer
    sorts:
    - sf__accounts.name
    limit: 1000
    column_limit: 50
    dynamic_fields:
    - table_calculation: count
      label: Count
      expression: count(${sf__accounts.name})
      value_format:
      value_format_name: decimal_0
      _kind_hint: dimension
      _type_hint: number
    font_size: medium
    text_color: "#49719a"
    hidden_fields:
    - sf__accounts.name
    - sf__accounts.seats_licensed
    - sf__accounts.renewal_date
    - sf__accounts.annual_recurring_revenue
    - owner.name
    single_value_title: Current Customers
    row: 2
    col: 0
    width: 8
    height: 2

  - title: Total ARR
    name: Total ARR
    model: salesforce
    explore: sf__accounts
    type: single_value
    fields:
    - sf__accounts.name
    - sf__accounts.annual_recurring_revenue
    filters:
      sf__accounts.type: Customer
    sorts:
    - sf__accounts.name
    limit: 500
    dynamic_fields:
    - table_calculation: arr_sum
      label: ARR Sum
      expression: sum(${sf__accounts.annual_recurring_revenue})
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
    - sf__accounts.name
    - sf__accounts.annual_recurring_revenue
    row: 2
    col: 8
    width: 8
    height: 2

  - title: New Opportunities Won/Lost
    name: New Opportunities Won/Lost
    model: salesforce
    explore: sf__opportunities
    type: looker_area
    fields:
    - sf__opportunities.count
    - sf__opportunities.close_quarter
    - sf__opportunities.stage_name
    pivots:
    - sf__opportunities.stage_name
    fill_fields:
    - sf__opportunities.close_quarter
    filters:
      sf__opportunities.close_month: 3 years
      sf__opportunities.stage_name: 06 - Closed Won,07 - Closed Lost
      sf__opportunities.type: New
    sorts:
    - sf__opportunities.close_quarter desc
    - sf__opportunities.stage_name
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
      06 - Closed Won - sf__opportunities.count: "#7accb2"
      07 - Closed Lost - sf__opportunities.count: "#ed765f"
    series_types: {}
    series_labels:
      06 - Closed Won - sf__opportunities.count: Won
      07 - Closed Lost - sf__opportunities.count: Lost
    row: 24
    col: 0
    width: 12
    height: 8

  - title: AVG Sales Cycle 12mo
    name: AVG Sales Cycle 12mo
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__accounts.name
    - sf__opportunities.opportunity_name
    - sf__opportunities.created_date
    - sf__opportunities.close_date
    filters:
      sf__opportunities.is_lost: 'Yes'
      sf__opportunities.close_date: 12 months
      sf__opportunities.type: New
    sorts:
    - sf__opportunities.close_date
    limit: 500
    dynamic_fields:
    - table_calculation: sales_cycle_days
      label: Sales Cycle (days)
      expression: diff_days(${sf__opportunities.created_date},${sf__opportunities.close_date})
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: number
    - table_calculation: avg_sales_cycle
      label: AVG Sales Cycle
      expression: sum(${sales_cycle_days})/count(${sf__opportunities.close_date})
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
    - sf__opportunities.close_date
    - sales_cycle_days
    - sf__opportunities.created_date
    - sf__opportunities.opportunity_name
    - sf__accounts.name
    single_value_title: AVG Sales Cycle (days) 12mo.
    row: 16
    col: 0
    width: 6
    height: 4

  - title: Yearly Net Growth
    name: Yearly Net Growth
    model: salesforce
    explore: sf__opportunities
    type: looker_line
    fields:
    - sf__opportunities.close_year
    - sf__opportunities.type
    - sf__opportunities.count_lost
    - sf__opportunities.count_won
    pivots:
    - sf__opportunities.type
    fill_fields:
    - sf__opportunities.close_year
    filters:
      sf__opportunities.is_closed: 'Yes'
      sf__opportunities.close_date: 4 years
      sf__opportunities.type: Renewal,New
    sorts:
    - sf__opportunities.close_year desc
    - sf__opportunities.type
    limit: 500
    dynamic_fields:
    - table_calculation: net_growth
      label: Net Growth
      expression: pivot_index(${sf__opportunities.count_won},1) - pivot_index(${sf__opportunities.count_lost},2)
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
    - sf__opportunities.count_won
    - sf__opportunities.count_lost
    series_colors:
      net_growth: "#559be6"
    row: 9
    col: 0
    width: 24
    height: 5

  - title: Churn Rate
    name: Churn Rate
    model: salesforce
    explore: sf__opportunities
    type: looker_line
    fields:
    - sf__opportunities.count
    - sf__opportunities.count_won
    - sf__opportunities.count_lost
    - sf__opportunities.close_year
    fill_fields:
    - sf__opportunities.close_year
    filters:
      sf__opportunities.type: Renewal
      sf__opportunities.is_closed: 'Yes'
      sf__opportunities.close_year: 4 years
    sorts:
    - sf__opportunities.close_year desc
    limit: 500
    dynamic_fields:
    - table_calculation: churn_rate
      label: Churn Rate
      expression: "${sf__opportunities.count_lost}/(${sf__opportunities.count_won}\
        \ + ${sf__opportunities.count_lost})"
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
    - sf__opportunities.count_lost
    - sf__opportunities.count_won
    - sf__opportunities.count
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
      - id: sf__opportunities.count
        name: Opportunities Count
        axisId: sf__opportunities.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    series_colors:
      sf__opportunities.count_won: "#559be6"
      win_percent: "#7accb2"
      sf__opportunities.count: "#559be6"
      churn_rate: "#559be6"
    row: 4
    col: 0
    width: 24
    height: 5

  - title: Net New Customers
    name: Net New Customers
    model: salesforce
    explore: sf__opportunities
    type: looker_line
    fields:
    - sf__opportunities.close_fiscal_quarter
    - sf__opportunities.count_won
    fill_fields:
    - sf__opportunities.close_fiscal_quarter
    filters:
      sf__opportunities.type: New
      sf__opportunities.is_closed: 'Yes'
      sf__opportunities.close_date: 1 years
    sorts:
    - sf__opportunities.close_fiscal_quarter desc
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
    series_colors:
      sf__opportunities.count_won: "#559be6"
    row: 20
    col: 0
    width: 12
    height: 4

  - title: Quarterly Bookings Sum
    name: Quarterly Bookings Sum
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__accounts.name
    - sf__opportunities.opportunity_name
    - opportunity_owners.name
    - sf__opportunities.created_date
    - sf__opportunities.close_date
    - sf__opportunities.annual_contract_value
    - sf__opportunities.bookings_value
    filters:
      sf__opportunities.type: New
      sf__opportunities.is_won: 'Yes'
      sf__opportunities.close_fiscal_quarter: 1 fiscal quarters
    sorts:
    - sf__accounts.name
    limit: 500
    dynamic_fields:
    - table_calculation: sum_of_bookings
      label: Sum of Bookings
      expression: sum(${sf__opportunities.bookings_value})
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
    - sf__opportunities.bookings_value
    - sf__opportunities.annual_contract_value
    - sf__opportunities.close_date
    - sf__opportunities.created_date
    - opportunity_owners.name
    - sf__opportunities.opportunity_name
    - sf__accounts.name
    row: 16
    col: 6
    width: 6
    height: 4

  - name: Company Performance
    type: text
    title_text: Company Performance
    row: 0
    col: 0
    width: 24
    height: 2

  - name: Sales Performance
    type: text
    title_text: Sales Performance
    row: 14
    col: 0
    width: 24
    height: 2

  - name: Marketing Performance
    type: text
    title_text: Marketing Performance
    row: 32
    col: 0
    width: 24
    height: 2

  - name: Customer Performance
    type: text
    title_text: Customer Performance
    subtitle_text: ''
    row: 50
    col: 0
    width: 24
    height: 2

  - title: Customer Running Total
    name: Customer Running Total
    model: salesforce
    explore: sf__opportunities
    type: looker_line
    fields:
    - sf__opportunities.close_year
    - sf__opportunities.count_won
    - sf__opportunities.count_lost
    - sf__opportunities.type
    pivots:
    - sf__opportunities.type
    fill_fields:
    - sf__opportunities.close_year
    filters:
      sf__opportunities.close_year: before 0 minutes ago
      sf__opportunities.is_closed: 'Yes'
      sf__opportunities.type: New,Renewal
    sorts:
    - sf__opportunities.close_year
    - sf__opportunities.type 0
    limit: 500
    dynamic_fields:
    - table_calculation: won
      label: Won
      expression: coalesce(${sf__opportunities.count_won},0)
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: lost
      label: Lost
      expression: coalesce(${sf__opportunities.count_lost},0)
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
    hidden_fields:
    - sf__opportunities.count_won
    - sf__opportunities.count_lost
    - won
    - lost
    - yearly_net_customer_growth
    series_colors:
      customer_running_total: "#559be6"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    row: 62
    col: 0
    width: 12
    height: 10

  - title: Leads to Opportunties
    name: Leads to Opportunties
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.currently_active_leads_count
    - sf__leads.net_mql_count
    - sf__leads.converted_to_opportunity_count
    - sf__leads.created_fiscal_quarter
    fill_fields:
    - sf__leads.created_fiscal_quarter
    filters:
      sf__leads.created_date: 4 quarters
      sf__leads.lead_source: Home Page Banner#,Kollective,Kollective Website,Home
        Page Banner,Kontiki Website,Website,Web Form,Web,LinkedIn,Advertisement
    sorts:
    - sf__leads.created_fiscal_quarter
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
      sf__leads.count: Leads
      sf__opportunities.count_new_business: Opportunities
      sf__opportunities.count_new_business_won: Won Opportunities
      sf__leads.net_mql_count: MQLs
      sf__leads.converted_to_opportunity_count: Opportunities
      sf__opportunities.count_sql: SQLs
      sf__opportunities.count_won: Won Opportunities
      sf__leads.currently_active_leads_count: Active Leads
    show_dropoff: false
    series_colors:
      sf__opportunities.count_won: "#5eb297"
      sf__opportunities.count_sql: "#9ae3cc"
      sf__leads.count: "#435978"
      sf__leads.net_mql_count: "#70b3fc"
      sf__leads.converted_to_opportunity_count: "#9ae3cc"
      sf__leads.currently_active_leads_count: "#4281c3"
    series_types: {}
    hidden_series: []
    row: 34
    col: 0
    width: 12
    height: 8

  - title: Leads by Source YTD
    name: Leads by Source YTD
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.count
    - sf__leads.lead_source
    filters:
      sf__leads.created_date: this year
      sf__leads.lead_source: Home Page Banner,Home Page Banner#,Kollective,Kollective
        Website,Web,Web Form,Website,Kontiki Website,LinkedIn,Advertisement
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
      sf__opportunities.count_sql: SQLs
      sf__opportunities.count_won: Won Opportunities
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: false
    series_colors:
      sf__opportunities.count_won: "#5eb297"
      sf__opportunities.count_sql: "#9ae3cc"
      sf__leads.count: "#559be6"
      sf__leads.net_mql_count: "#4281c3"
      sf__leads.converted_to_opportunity_count: "#70b3fc"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 42
    col: 0
    width: 12
    height: 8

  - title: Opportunities to Won
    name: Opportunities to Won
    model: salesforce
    explore: sf__leads
    type: looker_column
    fields:
    - sf__leads.created_fiscal_quarter
    - sf__opportunities.count
    - sf__opportunities.count_sql
    - sf__opportunities.count_won
    fill_fields:
    - sf__leads.created_fiscal_quarter
    filters:
      sf__leads.lead_source: Home Page Banner#,Kollective,Kollective Website,Home
        Page Banner,Kontiki Website,Website,Web Form,Web,LinkedIn,Advertisement
      sf__leads.created_fiscal_quarter: 4 fiscal quarters
    sorts:
    - sf__leads.created_fiscal_quarter
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
      sf__leads.count: "#559be6"
      sf__opportunities.count: "#435978"
      sf__opportunities.count_sql: "#4281c3"
      sf__opportunities.count_won: "#5eb297"
    series_labels:
      sf__opportunities.count_sql: Stage 2 +
      sf__opportunities.count: SQL
    column_spacing_ratio:
    column_group_spacing_ratio:
    row: 34
    col: 12
    width: 12
    height: 8

  - title: YTD Opportunities by Channel Partner (>10)
    name: YTD Opportunities by Channel Partner (>10)
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.channel_partner
    - sf__opportunities.count
    - sf__opportunities.count_sql
    filters:
      sf__opportunities.created_date: this year
      sf__opportunities.count: ">=10"
      sf__opportunities.type: New
    sorts:
    - sf__opportunities.count desc
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
      sf__opportunities.count: Opportunities
      sf__opportunities.count_sql: Stage 2+
      sf__opportunities.count_won: Won
    series_colors:
      sf__opportunities.count_won: "#5eb297"
      sf__opportunities.count: "#435978"
      sf__opportunities.count_sql: "#4281c3"
    hidden_series: []
    row: 42
    col: 12
    width: 12
    height: 8

  - title: Renewal Forecast
    name: Renewal Forecast
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.stage_name
    - sf__opportunities.sum_of_bookings_value
    - sf__opportunities.close_fiscal_quarter
    pivots:
    - sf__opportunities.stage_name
    fill_fields:
    - sf__opportunities.close_fiscal_quarter
    filters:
      sf__opportunities.close_fiscal_quarter: 1 quarter ago for 6 quarters
      sf__opportunities.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won,07 - Closed Lost
      sf__opportunities.type: Renewal
    sorts:
    - sf__opportunities.stage_name 0
    - sf__opportunities.close_fiscal_quarter
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
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunities.sum_of_bookings_value: Commit
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: Lost
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels:
    - Amount in Pipeline
    y_axis_tick_density: default
    show_x_axis_label: true
    x_axis_label: Close Quarter
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
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunities.sum_of_bookings_value: "#9ae3cc"
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: "#d75c44"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    reference_lines:
    - reference_type: line
      line_value: '4000000'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: Quarterly Goal
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 02 - Pipeline
        name: Pipeline
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 03 - Upside
        name: Upside
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 04 - Forecast
        name: Forecast
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 05 - Commit
        name: Commit
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunities.sum_of_bookings_value
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
    row: 52
    col: 0
    width: 12
    height: 10

  - title: Renewals Won/Lost by Quarter
    name: Renewals Won/Lost by Quarter
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.sum_of_bookings_value
    - sf__opportunities.stage_name
    - sf__opportunities.close_fiscal_quarter
    pivots:
    - sf__opportunities.stage_name
    fill_fields:
    - sf__opportunities.close_fiscal_quarter
    filters:
      sf__opportunities.stage_name: 06 - Closed Won,07 - Closed Lost,02 - Pipeline,03
        - Upside,04 - Forecast,05 - Commit
      sf__opportunities.close_date: 3 years
      sf__opportunities.type: Renewal
    sorts:
    - sf__opportunities.stage_name
    - sf__opportunities.close_fiscal_quarter desc
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
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: "#d75c44"
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunities.sum_of_bookings_value: "#9ae3cc"
    series_types: {}
    column_spacing_ratio:
    column_group_spacing_ratio:
    series_labels:
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: Lost
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunities.sum_of_bookings_value: Commit
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunities.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
    reference_lines:
    - reference_type: line
      line_value: '4000000'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: Quarterly Goal
    hidden_series:
    - 02 - Pipeline
    - 03 - Upside
    - 04 - Forecast
    - 05 - Commit
    row: 52
    col: 12
    width: 12
    height: 10

  - title: New Pipeline Forecast
    name: New Pipeline Forecast
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.close_fiscal_quarter
    - sf__opportunities.sum_of_bookings_value
    - sf__opportunities.stage_name
    pivots:
    - sf__opportunities.stage_name
    fill_fields:
    - sf__opportunities.close_fiscal_quarter
    filters:
      sf__opportunities.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won,07 - Closed Lost
      sf__opportunities.close_quarter: 1 quarter ago for 6 quarters
      sf__opportunities.type: New
      sf__opportunities.close_fiscal_quarter: 1 quarter ago for 6 quarters
    sorts:
    - sf__opportunities.stage_name 0
    - sf__opportunities.close_fiscal_quarter
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
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunities.sum_of_bookings_value: Commit
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: Lost
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels:
    - Amount in Pipeline
    y_axis_tick_density: default
    show_x_axis_label: true
    x_axis_label: Close Quarter
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
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunities.sum_of_bookings_value: "#9ae3cc"
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: "#d75c44"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    reference_lines:
    - reference_type: line
      line_value: '1500000'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: Quarterly Goal
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 02 - Pipeline
        name: Pipeline
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 03 - Upside
        name: Upside
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 04 - Forecast
        name: Forecast
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 05 - Commit
        name: Commit
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunities.sum_of_bookings_value
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
    row: 16
    col: 12
    width: 12
    height: 8

  - title: New Business Won/Lost by Quarter
    name: New Business Won/Lost by Quarter
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.sum_of_bookings_value
    - sf__opportunities.stage_name
    - sf__opportunities.close_fiscal_quarter
    pivots:
    - sf__opportunities.stage_name
    fill_fields:
    - sf__opportunities.close_fiscal_quarter
    filters:
      sf__opportunities.stage_name: 06 - Closed Won,07 - Closed Lost,02 - Pipeline,03
        - Upside,04 - Forecast,05 - Commit
      sf__opportunities.close_date: 3 years
      sf__opportunities.type: New
    sorts:
    - sf__opportunities.stage_name
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
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: "#d75c44"
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunities.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunities.sum_of_bookings_value: "#9ae3cc"
    series_types: {}
    column_spacing_ratio:
    column_group_spacing_ratio:
    series_labels:
      06 - Closed Won - sf__opportunities.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunities.sum_of_bookings_value: Lost
      02 - Pipeline - sf__opportunities.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunities.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunities.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunities.sum_of_bookings_value: Commit
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunities.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunities.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
    reference_lines:
    - reference_type: line
      line_value: '1500000'
      range_start: max
      range_end: min
      margin_top: deviation
      margin_value: mean
      margin_bottom: deviation
      label_position: right
      color: "#000000"
      label: Quarterly Goal
    hidden_series:
    - 02 - Pipeline
    - 03 - Upside
    - 04 - Forecast
    - 05 - Commit
    row: 24
    col: 12
    width: 12
    height: 8
  - name: Current Customer Table
    title: Current Customer Table
    model: company_usage
    explore: usage__map
    type: table
    fields:
    - sf__accounts.account_name_link
    - sf__accounts.dms
    - sf__accounts.annual_recurring_revenue
    - sf__accounts.renewal_date
    - usage__node.count
    filters:
      sf__accounts.type: Customer
    sorts:
    - sf__accounts.account_name_link
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
    -
    row: 62
    col: 12
    width: 12
    height: 10

  - title: Average ACV
    name: Average ACV
    model: salesforce
    explore: sf__accounts
    type: single_value
    fields:
    - sf__accounts.name
    - sf__accounts.annual_recurring_revenue
    filters:
      sf__accounts.type: Customer
    sorts:
    - sf__accounts.name
    limit: 500
    dynamic_fields:
    - table_calculation: average_acv
      label: Average ACV
      expression: sum(${sf__accounts.annual_recurring_revenue})/count(${sf__accounts.annual_recurring_revenue})
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
    - sf__accounts.name
    - sf__accounts.annual_recurring_revenue
    row: 2
    col: 16
    width: 8
    height: 2
