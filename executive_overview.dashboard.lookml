- dashboard: executive_overview
  title: Executive Overview
  layout: newspaper

  elements:

  - title: Current Customers
    name: Current Customers
    model: salesforce
    explore: sf__account
    type: single_value
    fields:
    - sf__account.name
    - owner.name
    - sf__account.seats_licensed
    - sf__account.annual_recurring_revenue
    - sf__account.renewal_date
    filters:
      sf__account.type: Customer
    sorts:
    - sf__account.name
    limit: 1000
    column_limit: 50
    dynamic_fields:
    - table_calculation: count
      label: Count
      expression: count(${sf__account.name})
      value_format:
      value_format_name: decimal_0
      _kind_hint: dimension
      _type_hint: number
    font_size: medium
    text_color: "#49719a"
    hidden_fields:
    - sf__account.name
    - sf__account.seats_licensed
    - sf__account.renewal_date
    - sf__account.annual_recurring_revenue
    - owner.name
    single_value_title: Current Customers
    row: 2
    col: 0
    width: 8
    height: 2

  - title: Total ARR
    name: Total ARR
    model: salesforce
    explore: sf__account
    type: single_value
    fields:
    - sf__account.name
    - sf__account.annual_recurring_revenue
    filters:
      sf__account.type: Customer
    sorts:
    - sf__account.name
    limit: 500
    dynamic_fields:
    - table_calculation: arr_sum
      label: ARR Sum
      expression: sum(${sf__account.annual_recurring_revenue})
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
    - sf__account.name
    - sf__account.annual_recurring_revenue
    row: 2
    col: 8
    width: 8
    height: 2

  - title: New Opportunities Won/Lost
    name: New Opportunities Won/Lost
    model: salesforce
    explore: sf__opportunity
    type: looker_area
    fields:
    - sf__opportunity.count
    - sf__opportunity.close_quarter
    - sf__opportunity.stage_name
    pivots:
    - sf__opportunity.stage_name
    fill_fields:
    - sf__opportunity.close_quarter
    filters:
      sf__opportunity.close_month: 3 years
      sf__opportunity.stage_name: 06 - Closed Won,07 - Closed Lost
      sf__opportunity.type: New
    sorts:
    - sf__opportunity.close_quarter desc
    - sf__opportunity.stage_name
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
      Renewal - sf__opportunity.count: "#7accb2"
      Upgrade / Upsell - sf__opportunity.count: "#9ae3cc"
      New - sf__opportunity.count: "#5eb297"
      06 - Closed Won - sf__opportunity.count: "#7accb2"
      07 - Closed Lost - sf__opportunity.count: "#ed765f"
    series_types: {}
    series_labels:
      06 - Closed Won - sf__opportunity.count: Won
      07 - Closed Lost - sf__opportunity.count: Lost
    row: 24
    col: 0
    width: 12
    height: 8

  - title: AVG Sales Cycle 12mo
    name: AVG Sales Cycle 12mo
    model: salesforce
    explore: sf__opportunity
    type: single_value
    fields:
    - sf__account.name
    - sf__opportunity.opportunity_name
    - sf__opportunity.created_date
    - sf__opportunity.close_date
    filters:
      sf__opportunity.is_lost: 'Yes'
      sf__opportunity.close_date: 12 months
      sf__opportunity.type: New
    sorts:
    - sf__opportunity.close_date
    limit: 500
    dynamic_fields:
    - table_calculation: sales_cycle_days
      label: Sales Cycle (days)
      expression: diff_days(${sf__opportunity.created_date},${sf__opportunity.close_date})
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: number
    - table_calculation: avg_sales_cycle
      label: AVG Sales Cycle
      expression: sum(${sales_cycle_days})/count(${sf__opportunity.close_date})
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
    - sf__opportunity.close_date
    - sales_cycle_days
    - sf__opportunity.created_date
    - sf__opportunity.opportunity_name
    - sf__account.name
    single_value_title: AVG Sales Cycle (days) 12mo.
    row: 16
    col: 0
    width: 6
    height: 4

  - title: Yearly Net Growth
    name: Yearly Net Growth
    model: salesforce
    explore: sf__opportunity
    type: looker_line
    fields:
    - sf__opportunity.close_year
    - sf__opportunity.type
    - sf__opportunity.count_lost
    - sf__opportunity.count_won
    pivots:
    - sf__opportunity.type
    fill_fields:
    - sf__opportunity.close_year
    filters:
      sf__opportunity.is_closed: 'Yes'
      sf__opportunity.close_date: 4 years
      sf__opportunity.type: Renewal,New
    sorts:
    - sf__opportunity.close_year desc
    - sf__opportunity.type
    limit: 500
    dynamic_fields:
    - table_calculation: net_growth
      label: Net Growth
      expression: pivot_index(${sf__opportunity.count_won},1) - pivot_index(${sf__opportunity.count_lost},2)
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
    - sf__opportunity.count_won
    - sf__opportunity.count_lost
    series_colors:
      net_growth: "#559be6"
    row: 9
    col: 0
    width: 24
    height: 5

  - title: Churn Rate
    name: Churn Rate
    model: salesforce
    explore: sf__opportunity
    type: looker_line
    fields:
    - sf__opportunity.count
    - sf__opportunity.count_won
    - sf__opportunity.count_lost
    - sf__opportunity.close_year
    fill_fields:
    - sf__opportunity.close_year
    filters:
      sf__opportunity.type: Renewal
      sf__opportunity.is_closed: 'Yes'
      sf__opportunity.close_year: 4 years
    sorts:
    - sf__opportunity.close_year desc
    limit: 500
    dynamic_fields:
    - table_calculation: churn_rate
      label: Churn Rate
      expression: "${sf__opportunity.count_lost}/(${sf__opportunity.count_won}\
        \ + ${sf__opportunity.count_lost})"
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
    - sf__opportunity.count_lost
    - sf__opportunity.count_won
    - sf__opportunity.count
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
      - id: sf__opportunity.count
        name: Opportunities Count
        axisId: sf__opportunity.count
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    series_colors:
      sf__opportunity.count_won: "#559be6"
      win_percent: "#7accb2"
      sf__opportunity.count: "#559be6"
      churn_rate: "#559be6"
    row: 4
    col: 0
    width: 24
    height: 5

  - title: Net New Customers
    name: Net New Customers
    model: salesforce
    explore: sf__opportunity
    type: looker_line
    fields:
    - sf__opportunity.close_fiscal_quarter
    - sf__opportunity.count_won
    fill_fields:
    - sf__opportunity.close_fiscal_quarter
    filters:
      sf__opportunity.type: New
      sf__opportunity.is_closed: 'Yes'
      sf__opportunity.close_date: 1 years
    sorts:
    - sf__opportunity.close_fiscal_quarter desc
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
      sf__opportunity.count_won: "#559be6"
    row: 20
    col: 0
    width: 12
    height: 4

  - title: Quarterly Bookings Sum
    name: Quarterly Bookings Sum
    model: salesforce
    explore: sf__opportunity
    type: single_value
    fields:
    - sf__account.name
    - sf__opportunity.opportunity_name
    - opportunity_owners.name
    - sf__opportunity.created_date
    - sf__opportunity.close_date
    - sf__opportunity.annual_contract_value
    - sf__opportunity.bookings_value
    filters:
      sf__opportunity.type: New
      sf__opportunity.is_won: 'Yes'
      sf__opportunity.close_fiscal_quarter: 1 fiscal quarters
    sorts:
    - sf__account.name
    limit: 500
    dynamic_fields:
    - table_calculation: sum_of_bookings
      label: Sum of Bookings
      expression: sum(${sf__opportunity.bookings_value})
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
    - sf__opportunity.bookings_value
    - sf__opportunity.annual_contract_value
    - sf__opportunity.close_date
    - sf__opportunity.created_date
    - opportunity_owners.name
    - sf__opportunity.opportunity_name
    - sf__account.name
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

  - name: Customer Running Total
    title: Customer Running Total
    model: salesforce
    explore: sf__opportunity
    type: looker_line
    fields: [sf__opportunity.close_year, sf__opportunity.count_won, sf__opportunity.count_lost,
      sf__opportunity.type]
    pivots: [sf__opportunity.type]
    fill_fields: [sf__opportunity.close_year]
    filters:
      sf__opportunity.close_year: before 0 minutes ago
      sf__opportunity.is_closed: 'Yes'
      sf__opportunity.type: New,Renewal
      sf__opportunity.contract_term_months: ">=3"
    sorts: [sf__opportunity.close_year, sf__opportunity.type 0]
    limit: 500
    dynamic_fields:
    - table_calculation: won
      label: Won
      expression: coalesce(${sf__opportunity.count_won},0)
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - table_calculation: lost
      label: Lost
      expression: coalesce(${sf__opportunity.count_lost},0)
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
    hidden_fields: [sf__opportunity.count_won, sf__opportunity.count_lost, won,
      lost, yearly_net_customer_growth]
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
    explore: sf__lead
    type: looker_column
    fields:
    - sf__lead.count
    - sf__lead.currently_active_leads_count
    - sf__lead.net_mql_count
    - sf__lead.converted_to_opportunity_count
    - sf__lead.created_fiscal_quarter
    fill_fields:
    - sf__lead.created_fiscal_quarter
    filters:
      sf__lead.created_date: 4 quarters
      sf__lead.lead_source: Home Page Banner#,Kollective,Kollective Website,Home
        Page Banner,Kontiki Website,Website,Web Form,Web,LinkedIn,Advertisement
    sorts:
    - sf__lead.created_fiscal_quarter
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
      sf__lead.count: Leads
      sf__opportunity.count_new_business: Opportunities
      sf__opportunity.count_new_business_won: Won Opportunities
      sf__lead.net_mql_count: MQLs
      sf__lead.converted_to_opportunity_count: Opportunities
      sf__opportunity.count_sql: SQLs
      sf__opportunity.count_won: Won Opportunities
      sf__lead.currently_active_leads_count: Active Leads
    show_dropoff: false
    series_colors:
      sf__opportunity.count_won: "#5eb297"
      sf__opportunity.count_sql: "#9ae3cc"
      sf__lead.count: "#435978"
      sf__lead.net_mql_count: "#70b3fc"
      sf__lead.converted_to_opportunity_count: "#9ae3cc"
      sf__lead.currently_active_leads_count: "#4281c3"
    series_types: {}
    hidden_series: []
    row: 34
    col: 0
    width: 12
    height: 8

  - title: Leads by Source YTD
    name: Leads by Source YTD
    model: salesforce
    explore: sf__lead
    type: looker_column
    fields:
    - sf__lead.count
    - sf__lead.lead_source
    filters:
      sf__lead.created_date: this year
      sf__lead.lead_source: Home Page Banner,Home Page Banner#,Kollective,Kollective
        Website,Web,Web Form,Website,Kontiki Website,LinkedIn,Advertisement
    sorts:
    - sf__lead.count desc
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
      sf__lead.count: Leads
      sf__opportunity.count_new_business: Opportunities
      sf__opportunity.count_new_business_won: Won Opportunities
      sf__lead.net_mql_count: MQLs
      sf__lead.converted_to_opportunity_count: Opportunities
      sf__opportunity.count_sql: SQLs
      sf__opportunity.count_won: Won Opportunities
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
      sf__opportunity.count_won: "#5eb297"
      sf__opportunity.count_sql: "#9ae3cc"
      sf__lead.count: "#559be6"
      sf__lead.net_mql_count: "#4281c3"
      sf__lead.converted_to_opportunity_count: "#70b3fc"
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
    explore: sf__lead
    type: looker_column
    fields:
    - sf__lead.created_fiscal_quarter
    - sf__opportunity.count
    - sf__opportunity.count_sql
    - sf__opportunity.count_won
    fill_fields:
    - sf__lead.created_fiscal_quarter
    filters:
      sf__lead.lead_source: Home Page Banner#,Kollective,Kollective Website,Home
        Page Banner,Kontiki Website,Website,Web Form,Web,LinkedIn,Advertisement
      sf__lead.created_fiscal_quarter: 4 fiscal quarters
    sorts:
    - sf__lead.created_fiscal_quarter
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
      sf__lead.count: "#559be6"
      sf__opportunity.count: "#435978"
      sf__opportunity.count_sql: "#4281c3"
      sf__opportunity.count_won: "#5eb297"
    series_labels:
      sf__opportunity.count_sql: Stage 2 +
      sf__opportunity.count: SQL
    column_spacing_ratio:
    column_group_spacing_ratio:
    row: 34
    col: 12
    width: 12
    height: 8

  - title: YTD Opportunities by Channel Partner (>10)
    name: YTD Opportunities by Channel Partner (>10)
    model: salesforce
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.channel_partner
    - sf__opportunity.count
    - sf__opportunity.count_sql
    filters:
      sf__opportunity.created_date: this year
      sf__opportunity.count: ">=10"
      sf__opportunity.type: New
    sorts:
    - sf__opportunity.count desc
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
      sf__opportunity.count: Opportunities
      sf__opportunity.count_sql: Stage 2+
      sf__opportunity.count_won: Won
    series_colors:
      sf__opportunity.count_won: "#5eb297"
      sf__opportunity.count: "#435978"
      sf__opportunity.count_sql: "#4281c3"
    hidden_series: []
    row: 42
    col: 12
    width: 12
    height: 8

  - title: Renewal Forecast
    name: Renewal Forecast
    model: salesforce
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.stage_name
    - sf__opportunity.sum_of_bookings_value
    - sf__opportunity.close_fiscal_quarter
    pivots:
    - sf__opportunity.stage_name
    fill_fields:
    - sf__opportunity.close_fiscal_quarter
    filters:
      sf__opportunity.close_fiscal_quarter: 1 quarter ago for 6 quarters
      sf__opportunity.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won,07 - Closed Lost
      sf__opportunity.type: Renewal
    sorts:
    - sf__opportunity.stage_name 0
    - sf__opportunity.close_fiscal_quarter
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
      02 - Pipeline - sf__opportunity.total_revenue: Pipeline
      03 - Upside - sf__opportunity.total_revenue: Upside
      04 - Forecast - sf__opportunity.total_revenue: Forecast
      05 - Commit - sf__opportunity.total_revenue: Commit
      06 - Closed Won - sf__opportunity.total_revenue: Closed Won
      07 - Closed Lost - sf__opportunity.total_revenue: Closed Lost
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunity.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunity.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunity.sum_of_bookings_value: Commit
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: Lost
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
      06 - Closed Won - sf__opportunity.total_revenue: "#5eb297"
      05 - Commit - sf__opportunity.total_revenue: "#9ae3cc"
      07 - Closed Lost - sf__opportunity.total_revenue: "#d75c44"
      04 - Forecast - sf__opportunity.total_revenue: "#70b3fc"
      03 - Upside - sf__opportunity.total_revenue: "#4281c3"
      02 - Pipeline - sf__opportunity.total_revenue: "#435978"
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunity.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunity.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunity.sum_of_bookings_value: "#9ae3cc"
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: "#d75c44"
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
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 03 - Upside
        name: Upside
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 04 - Forecast
        name: Forecast
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 05 - Commit
        name: Commit
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunity.sum_of_bookings_value
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
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.sum_of_bookings_value
    - sf__opportunity.stage_name
    - sf__opportunity.close_fiscal_quarter
    pivots:
    - sf__opportunity.stage_name
    fill_fields:
    - sf__opportunity.close_fiscal_quarter
    filters:
      sf__opportunity.stage_name: 06 - Closed Won,07 - Closed Lost,02 - Pipeline,03
        - Upside,04 - Forecast,05 - Commit
      sf__opportunity.close_date: 3 years
      sf__opportunity.type: Renewal
    sorts:
    - sf__opportunity.stage_name
    - sf__opportunity.close_fiscal_quarter desc
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
      New - sf__opportunity.sum_of_bookings_value: "#435978"
      Renewal - sf__opportunity.sum_of_bookings_value: "#4281c3"
      Upgrade / Upsell - sf__opportunity.sum_of_bookings_value: "#70b3fc"
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: "#d75c44"
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunity.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunity.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunity.sum_of_bookings_value: "#9ae3cc"
    series_types: {}
    column_spacing_ratio:
    column_group_spacing_ratio:
    series_labels:
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: Lost
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunity.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunity.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunity.sum_of_bookings_value: Commit
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunity.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
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
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.close_fiscal_quarter
    - sf__opportunity.sum_of_bookings_value
    - sf__opportunity.stage_name
    pivots:
    - sf__opportunity.stage_name
    fill_fields:
    - sf__opportunity.close_fiscal_quarter
    filters:
      sf__opportunity.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won,07 - Closed Lost
      sf__opportunity.close_quarter: 1 quarter ago for 6 quarters
      sf__opportunity.type: New
      sf__opportunity.close_fiscal_quarter: 1 quarter ago for 6 quarters
    sorts:
    - sf__opportunity.stage_name 0
    - sf__opportunity.close_fiscal_quarter
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
      02 - Pipeline - sf__opportunity.total_revenue: Pipeline
      03 - Upside - sf__opportunity.total_revenue: Upside
      04 - Forecast - sf__opportunity.total_revenue: Forecast
      05 - Commit - sf__opportunity.total_revenue: Commit
      06 - Closed Won - sf__opportunity.total_revenue: Closed Won
      07 - Closed Lost - sf__opportunity.total_revenue: Closed Lost
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunity.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunity.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunity.sum_of_bookings_value: Commit
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: Lost
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
      06 - Closed Won - sf__opportunity.total_revenue: "#5eb297"
      05 - Commit - sf__opportunity.total_revenue: "#9ae3cc"
      07 - Closed Lost - sf__opportunity.total_revenue: "#d75c44"
      04 - Forecast - sf__opportunity.total_revenue: "#70b3fc"
      03 - Upside - sf__opportunity.total_revenue: "#4281c3"
      02 - Pipeline - sf__opportunity.total_revenue: "#435978"
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunity.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunity.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunity.sum_of_bookings_value: "#9ae3cc"
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: "#d75c44"
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
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 03 - Upside
        name: Upside
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 04 - Forecast
        name: Forecast
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 05 - Commit
        name: Commit
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunity.sum_of_bookings_value
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
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.sum_of_bookings_value
    - sf__opportunity.stage_name
    - sf__opportunity.close_fiscal_quarter
    pivots:
    - sf__opportunity.stage_name
    fill_fields:
    - sf__opportunity.close_fiscal_quarter
    filters:
      sf__opportunity.stage_name: 06 - Closed Won,07 - Closed Lost,02 - Pipeline,03
        - Upside,04 - Forecast,05 - Commit
      sf__opportunity.close_date: 3 years
      sf__opportunity.type: New
    sorts:
    - sf__opportunity.stage_name
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
      New - sf__opportunity.sum_of_bookings_value: "#435978"
      Renewal - sf__opportunity.sum_of_bookings_value: "#4281c3"
      Upgrade / Upsell - sf__opportunity.sum_of_bookings_value: "#70b3fc"
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: "#5eb297"
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: "#d75c44"
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunity.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunity.sum_of_bookings_value: "#559be6"
      05 - Commit - sf__opportunity.sum_of_bookings_value: "#9ae3cc"
    series_types: {}
    column_spacing_ratio:
    column_group_spacing_ratio:
    series_labels:
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: Won
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: Lost
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: Pipeline
      03 - Upside - sf__opportunity.sum_of_bookings_value: Upside
      04 - Forecast - sf__opportunity.sum_of_bookings_value: Forecast
      05 - Commit - sf__opportunity.sum_of_bookings_value: Commit
    y_axes:
    - label: Total Bookings Value
      orientation: left
      series:
      - id: 06 - Closed Won
        name: Won
        axisId: sf__opportunity.sum_of_bookings_value
      - id: 07 - Closed Lost
        name: Lost
        axisId: sf__opportunity.sum_of_bookings_value
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    x_axis_reversed: false
    y_axis_reversed: false
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
    - sf__account.account_name_link
    - sf__account.dms
    - sf__account.annual_recurring_revenue
    - sf__account.renewal_date
    - usage__node.count
    filters:
      sf__account.type: Customer
    sorts:
    - sf__account.account_name_link
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
    explore: sf__account
    type: single_value
    fields:
    - sf__account.name
    - sf__account.annual_recurring_revenue
    filters:
      sf__account.type: Customer
    sorts:
    - sf__account.name
    limit: 500
    dynamic_fields:
    - table_calculation: average_acv
      label: Average ACV
      expression: sum(${sf__account.annual_recurring_revenue})/count(${sf__account.annual_recurring_revenue})
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
    - sf__account.name
    - sf__account.annual_recurring_revenue
    row: 2
    col: 16
    width: 8
    height: 2
