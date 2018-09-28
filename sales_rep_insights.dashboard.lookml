- dashboard: sales_rep_insights
  title: Sales Rep Insights
  layout: newspaper

  elements:

  - title: QTD Pipeline
    name: QTD Pipeline
    model: salesforce
    explore: sf__opportunity
    type: single_value
    fields:
    - sf__opportunity.sum_of_bookings_value
    filters:
      sf__opportunity.close_date: this quarter
      sf__opportunity.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
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
    explore: sf__opportunity
    type: single_value
    fields:
    - sf__opportunity.win_percentage
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
    explore: sf__opportunity
    type: single_value
    fields:
    - sf__opportunity.count_open
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
    explore: sf__opportunity
    type: single_value
    fields:
    - sf__opportunity.sum_of_bookings_value
    filters:
      sf__opportunity.is_won: 'Yes'
      sf__opportunity.close_date: this quarter
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
    explore: sf__opportunity
    type: single_value
    fields:
    - sf__opportunity.average_deal_size
    filters:
      sf__opportunity.is_won: 'Yes'
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
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.sum_of_bookings_value
    - sf__opportunity.close_quarter
    fill_fields:
    - sf__opportunity.close_quarter
    filters:
      sf__opportunity.close_date: 12 quarters
      sf__opportunity.is_won: 'Yes'
    sorts:
    - sf__opportunity.close_quarter desc
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
      sf__opportunity.sum_of_bookings_value: "#559be6"
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
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.stage_name
    - sf__opportunity.sum_of_bookings_value
    - sf__opportunity.close_month
    pivots:
    - sf__opportunity.stage_name
    fill_fields:
    - sf__opportunity.close_month
    filters:
      sf__opportunity.close_date: 9 months ago for 12 months
      sf__opportunity.stage_name: 01 - Prospect,02 - Pipeline,03 - Upside,04 - Forecast,05
        - Commit,06 - Closed Won,07 - Closed Lost
    sorts:
    - sf__opportunity.close_month desc
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      07 - Closed Lost - sf__opportunity.sum_of_bookings_value: "#d75c44"
      06 - Closed Won - sf__opportunity.sum_of_bookings_value: "#5eb297"
      05 - Commit - sf__opportunity.sum_of_bookings_value: "#9ae3cc"
      01 - Prospect - sf__opportunity.sum_of_bookings_value: "#202c3a"
      02 - Pipeline - sf__opportunity.sum_of_bookings_value: "#435978"
      03 - Upside - sf__opportunity.sum_of_bookings_value: "#4281c3"
      04 - Forecast - sf__opportunity.sum_of_bookings_value: "#70b3fc"
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
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.count
    - sf__opportunity.count_sql
    - sf__opportunity.count_won
    filters:
      sf__opportunity.created_date: this year
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
      sf__opportunity.count: "#4281c3"
      sf__opportunity.count_sql: "#70b3fc"
      sf__opportunity.count_won: "#5eb297"
    listen:
      sales_rep_filter: opportunity_owners.name
    row: 10
    col: 0
    width: 12
    height: 7

  - title: Funnel Velocity
    name: Funnel Velocity
    model: salesforce
    explore: sf__opportunity
    type: looker_column
    fields:
    - sf__opportunity.average_active_velocity
    - sf__opportunity.average_won_velocity
    filters:
      sf__opportunity.created_date: this year
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
      sf__opportunity.average_active_velocity: "#559be6"
      sf__opportunity.average_won_velocity: "#7accb2"
    series_labels:
      sf__opportunity.average_active_velocity: Created to Active
      sf__opportunity.average_won_velocity: Active to Won
    y_axes:
    - label: Days
      orientation: left
      series:
      - id: sf__opportunity.average_active_velocity
        name: Created to Active
        axisId: sf__opportunity.average_active_velocity
      - id: sf__opportunity.average_won_velocity
        name: Active to Won
        axisId: sf__opportunity.average_won_velocity
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
    explore: sf__lead
    type: table
    fields: [sf__lead.company, lead_owners.name, sf__lead.acquisition_program, sf__lead.lead_source,
      sf__lead.status, sf__lead.mql_date]
    filters:
      sf__lead.marketing_qualified_timestamp_date: NOT NULL
      sf__lead.status: New,Qualified,Working
    sorts: [sf__lead.mql_date desc]
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
    explore: sf__opportunity
    type: table
    fields:
    - sf__account.account_name_link
    - sf__opportunity.opportunity_name
    - sf__opportunity.type
    - sf__opportunity.stage_name
    - sf__opportunity.bookings_value
    - sf__opportunity.created_date
    - sf__opportunity.close_date
    filters:
      sf__opportunity.is_closed: 'No'
      sf__opportunity.close_date: This year
    sorts:
    - sf__opportunity.close_date
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
      sf__account.account_name_link: Company
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
    explore: sf__opportunity
    listens_to_filters: []
    field: opportunity_owners.name