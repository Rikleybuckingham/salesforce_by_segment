- dashboard: sales_rep_insights
  title: Sales Rep Insights
  layout: newspaper

  elements:

  - title: QTD Pipeline
    name: QTD Pipeline
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
        - Closed Won
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 0
    col: 0
    width: 5
    height: 2

  - title: Won Opportunity Percent
    name: Won Opportunity Percent
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.win_percentage
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 0
    col: 14
    width: 5
    height: 2

  - title: Open Opportunities
    name: Open Opportunities
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.count_open
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 0
    col: 10
    width: 4
    height: 2

  - title: Total Revenue Won QTD
    name: Total Revenue Won QTD
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.is_won: 'Yes'
      sf_opportunities.close_date: this quarter
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 0
    col: 5
    width: 5
    height: 2

  - title: Average Deal Size
    name: Average Deal Size
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.average_deal_size
    filters:
      sf_opportunities.is_won: 'Yes'
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 0
    col: 19
    width: 5
    height: 2

  - title: Quarterly Won Revenue
    name: Quarterly Won Revenue
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.sum_of_bookings_value
    - sf_opportunities.close_quarter
    fill_fields:
    - sf_opportunities.close_quarter
    filters:
      sf_opportunities.close_date: 12 quarters
      sf_opportunities.is_won: 'Yes'
    sorts:
    - sf_opportunities.close_quarter desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#559be6"
    show_dropoff: false
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 2
    col: 0
    width: 12
    height: 8

  - title: Sales Pipeline
    name: Sales Pipeline
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.stage_name
    - sf_opportunities.sum_of_bookings_value
    - sf_opportunities.close_month
    pivots:
    - sf_opportunities.stage_name
    fill_fields:
    - sf_opportunities.close_month
    filters:
      sf_opportunities.close_date: 9 months ago for 12 months
      sf_opportunities.stage_name: 01 - Prospect,02 - Pipeline,03 - Upside,04 - Forecast,05
        - Commit,06 - Closed Won,07 - Closed Lost
    sorts:
    - sf_opportunities.close_month desc
    - sf_opportunities.stage_name
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      07 - Closed Lost - sf_opportunities.sum_of_bookings_value: "#d75c44"
      06 - Closed Won - sf_opportunities.sum_of_bookings_value: "#5eb297"
      05 - Commit - sf_opportunities.sum_of_bookings_value: "#9ae3cc"
      01 - Prospect - sf_opportunities.sum_of_bookings_value: "#202c3a"
      02 - Pipeline - sf_opportunities.sum_of_bookings_value: "#435978"
      03 - Upside - sf_opportunities.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf_opportunities.sum_of_bookings_value: "#70b3fc"
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 2
    col: 12
    width: 12
    height: 8

  - title: Funnel YTD
    name: Funnel YTD
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.count
    - sf_opportunities.count_sql
    - sf_opportunities.count_won
    filters:
      sf_opportunities.created_date: this year
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: true
    series_colors:
      sf_opportunities.count: "#4281c3"
      sf_opportunities.count_sql: "#70b3fc"
      sf_opportunities.count_won: "#5eb297"
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 10
    col: 0
    width: 12
    height: 7

  - title: Funnel Velocity
    name: Funnel Velocity
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.average_active_velocity
    - sf_opportunities.average_won_velocity
    filters:
      sf_opportunities.created_date: this year
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    series_colors:
      sf_opportunities.average_active_velocity: "#559be6"
      sf_opportunities.average_won_velocity: "#7accb2"
    series_labels:
      sf_opportunities.average_active_velocity: Created to Active
      sf_opportunities.average_won_velocity: Active to Won
    y_axes:
    - label: Days
      orientation: left
      series:
      - id: sf_opportunities.average_active_velocity
        name: Created to Active
        axisId: sf_opportunities.average_active_velocity
      - id: sf_opportunities.average_won_velocity
        name: Active to Won
        axisId: sf_opportunities.average_won_velocity
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 10
    col: 12
    width: 12
    height: 7

  - name: current_mql_details
    title: Current MQL Details
    model: salesforce
    explore: sf_leads
    type: table
    fields: [sf_leads.company, lead_owners.name, sf_leads.acquisition_program, sf_leads.lead_source,
      sf_leads.status, sf_leads.mql_date]
    filters:
      sf_leads.mql_date: NOT NULL
      sf_leads.status: New,Qualified,Working
    sorts: [sf_leads.mql_date desc]
    limit: 500
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
    listen:
      sales_rep_filter: lead_owners.name
    row: 17
    col: 0
    width: 12
    height: 7

  - title: Yearly Opportunities
    name: Yearly Opportunities
    model: salesforce
    explore: sf_opportunities
    type: table
    fields:
    - sf_accounts.account_name_link
    - sf_opportunities.opportunity_name
    - sf_opportunities.type
    - sf_opportunities.stage_name
    - sf_opportunities.bookings_value
    - sf_opportunities.created_date
    - sf_opportunities.close_date
    filters:
      sf_opportunities.is_closed: 'No'
      sf_opportunities.close_date: This year
    sorts:
    - sf_opportunities.close_date
    limit: 500
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
    stacking: ''
    show_value_labels: false
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      sf_accounts.account_name_link: Company
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 17
    col: 12
    width: 12
    height: 7

  filters:

  - name: sales_rep_filter
    title: Sales Rep
    type: field_filter
    default_value: "None"
    allow_multiple_values: true
    required: false
    model: salesforce
    explore: sf_opportunities
    listens_to_filters: []
    field: opportunity_owners.name