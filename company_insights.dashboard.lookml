- dashboard: company_insights
  title: Company Insights
  layout: newspaper

  elements:

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
    single_value_title: Delivery Count
    listen:
      account_id_filter: usage__map.salesforce_id
      usage_date_filter: usage__delivery.start_date
    row: 0
    col: 14
    width: 5
    height: 3

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
    single_value_title: Agent Count
    listen:
      account_id_filter: usage__map.salesforce_id
      usage_date_filter: usage__delivery.start_date
    row: 0
    col: 19
    width: 5
    height: 3

  - title: ARR
    name: ARR
    model: salesforce
    explore: sf__account
    type: single_value
    fields:
    - sf__account.annual_recurring_revenue
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
      account_id_filter: sf__account.id
    row: 3
    col: 0
    width: 6
    height: 3

  - title: Products
    name: Products
    model: salesforce
    explore: sf__account
    type: table
    fields:
    - sf__account.admin_center
    - sf__account.clientless_streaming
    - sf__account.ecdn
    - sf__account.live
    - sf__account.media_center
    - sf__account.media_center_live_streaming
    - sf__account.network_readiness_tester
    - sf__account.saml
    - sf__account.share_point
    - sf__account.skype_meeting_broadcast
    - sf__account.webcaster
    sorts:
    - sf__account.admin_center
    limit: 500
    show_view_names: false
    show_row_numbers: false
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
    listen:
      account_id_filter: sf__account.id
    row: 12
    col: 0
    width: 24
    height: 2

  - title: Seats Licensed
    name: Seats Licensed
    model: salesforce
    explore: sf__account
    type: single_value
    fields:
    - sf__account.seats_licensed
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
      account_id_filter: sf__account.id
    row: 6
    col: 0
    width: 6
    height: 3

  - title: Monthly Usage
    name: Monthly Usage
    model: company_usage
    explore: usage__map
    type: looker_area
    fields:
    - usage__delivery.start_month
    - usage__delivery.total_gb
    - usage__delivery.unique_agent_count
    - usage__delivery.unique_content
    fill_fields:
    - usage__delivery.start_month
    sorts:
    - usage__delivery.start_month desc
    limit: 500
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
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      usage__delivery.total_gb: "#202c3a"
      usage__delivery.unique_agent_count: "#4281c3"
      usage__delivery.unique_content: "#70b3fc"
    series_types: {}
    listen:
      account_id_filter: usage__map.salesforce_id
      usage_date_filter: usage__delivery.start_date
    row: 3
    col: 6
    width: 18
    height: 9

  - title: Renewal Date
    name: Renewal Date
    model: salesforce
    explore: sf__account
    type: single_value
    fields:
    - sf__account.renewal_date
    fill_fields:
    - sf__account.renewal_date
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
      account_id_filter: sf__account.id
    row: 9
    col: 0
    width: 6
    height: 3

  - title: Total GB
    name: Total GB
    model: company_usage
    explore: usage__map
    type: single_value
    fields:
    - usage__delivery.total_gb
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
    single_value_title: Total GB
    listen:
      account_id_filter: usage__map.salesforce_id
      usage_date_filter: usage__delivery.start_date
    row: 0
    col: 6
    width: 4
    height: 3

  - title: Company
    name: Company
    model: salesforce
    explore: sf__account
    type: single_value
    fields:
    - sf__account.name
    sorts:
    - sf__account.name
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
      account_id_filter: sf__account.id
    row: 0
    col: 0
    width: 6
    height: 3

  - title: Content Count
    name: Content Count
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
    single_value_title: Content Count
    listen:
      account_id_filter: usage__map.salesforce_id
      usage_date_filter: usage__delivery.start_date
    row: 0
    col: 10
    width: 4
    height: 3

  - title: Open Opportunities
    name: Open Opportunities
    model: salesforce
    explore: sf__opportunity
    type: table
    fields:
    - sf__opportunity.opportunity_name
    - sf__opportunity.bookings_value
    - sf__opportunity.type
    - sf__opportunity.stage_name
    - sf__opportunity.channel_partner
    - sf__opportunity.contract_term_months
    - sf__opportunity.close_date
    filters:
      sf__opportunity.is_closed: 'No'
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
    listen:
      account_id_filter: sf__account.id
    row: 14
    col: 0
    width: 24
    height: 4

  filters:
  - name: account_id_filter
    title: Account ID
    type: string_filter
    default_value:
    allow_multiple_values: false
    required: true

  - name: usage_date_filter
    title: Usage Date
    type: date_filter
    default_value:
    allow_multiple_values: true
    required: false