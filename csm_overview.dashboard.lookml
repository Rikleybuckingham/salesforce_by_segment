- dashboard: csm_overview
  title: CSM Overview
  layout: newspaper

  elements:

  - title: Upcoming Renewals Table
    name: upcoming_renewals
    model: salesforce
    explore: sf__opportunities
    type: table
    fields:
    - sf__accounts.account_name_link
    - sf__opportunities.opportunity_name
    - opportunity_owners.name
    - sf__opportunities.channel_partner
    - sf__opportunities.bookings_value
    - sf__opportunities.contract_term_months
    - sf__opportunities.close_date
    - sf__opportunities.id
    - sf__accounts.id
    filters:
      sf__opportunities.type: Renewal
      sf__opportunities.close_date: after 0 minutes ago
      opportunity_owners.name: ''
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
    series_labels:
      sf__accounts.account_name_link: Company
      sf__opportunities.opportunity_name: Opportunity Name
      opportunity_owners.name: Opportunity Owner Name
      sf__opportunities.channel_partner: Channel Partner
      sf__opportunities.bookings_value: Bookings Value
      sf__opportunities.contract_term_months: Contract Term Months
      sf__opportunities.close_date: Close Date
    conditional_formatting: []
    listen:
      CSM: opportunity_owners.name
    hidden_fields: [sf__accounts.id, sf__opportunities.id]
    row: 10
    col: 0
    width: 24
    height: 7

  - title: Open Renewals
    name: open_renewals
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.count_open
    filters:
      sf__opportunities.type: Renewal
    limit: 500
    custom_color_enabled: false
    custom_color: "#224f8b"
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
    single_value_title: Open Renewals
    listen:
      CSM: opportunity_owners.name
    row: 0
    col: 5
    width: 5
    height: 3

  - title: Won Renewals
    name: won_renewals
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.count_won
    filters:
      sf__opportunities.type: Renewal
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
    single_value_title: Renewal's Won
    listen:
      CSM: opportunity_owners.name
    row: 0
    col: 10
    width: 4
    height: 3

  - title: Current Pipeline
    name: current_pipeline
    model: salesforce
    explore: sf__opportunities
    type: looker_column
    fields:
    - sf__opportunities.close_month
    - sf__opportunities.sum_of_bookings_value
    - sf__opportunities.stage_name
    pivots:
    - sf__opportunities.stage_name
    fill_fields:
    - sf__opportunities.close_month
    filters:
      sf__opportunities.close_date: 3 months ago for 6 months
      sf__opportunities.stage_name: "-09-Duplicate Remove,-08 - Disqualified"
      sf__opportunities.type: Renewal
    sorts:
    - sf__opportunities.close_month
    - sf__opportunities.stage_name 0
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
    series_types: {}
    column_group_spacing_ratio:
    series_colors:
      03 - Upside: "#70b3fc"
      04 - Forecast: "#4281c3"
      05 - Commit: "#9ae3cc"
      06 - Closed Won: "#5eb297"
    listen:
      CSM: opportunity_owners.name
    row: 3
    col: 0
    width: 24
    height: 7

  - title: Average Deal Size
    name: average_deal_size
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.average_deal_size
    filters:
      sf__opportunities.stage_name: 06 - Closed Won
      sf__opportunities.type: Renewal
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
    single_value_title: Average Won Deal Size
    listen:
      CSM: opportunity_owners.name
    row: 0
    col: 19
    width: 5
    height: 3

  - title: Renewal Win Percentage
    name: renewal_win_percentage
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.win_percentage
    filters:
      sf__opportunities.type: Renewal
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
    single_value_title: Renewal Win Percentage
    listen:
      CSM: opportunity_owners.name
    row: 0
    col: 14
    width: 5
    height: 3

  - title: Quarterly Pipeline Revenue
    name: quarterly_pipeline_revenue
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.total_pipeline_revenue
    filters:
      sf__opportunities.type: Renewal
      sf__opportunities.close_date: this quarter
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
    single_value_title: Quarterly Pipeline
    listen:
      CSM: opportunity_owners.name
    row: 0
    col: 0
    width: 5
    height: 3

  filters:

  - name: CSM
    title: CSM
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
