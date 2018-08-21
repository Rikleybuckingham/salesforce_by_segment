- dashboard: company_insights
  title: Company Details
  layout: newspaper

  elements:

  - title: Content Count
    name: content_count
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

  - title: Delivery Count
    name: delivery_count
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

  - title: Name
    name: name
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__accounts.name
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
    listen:
      opportunity_id_filter: sf__opportunities.id
    row: 0
    col: 0
    width: 6
    height: 3

  - title: Total GB
    name: total_gb
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

  - title: Agent Count
    name: agent_count
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

  - title: Stage Name
    name: stage_name
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.id
    - sf__opportunities.stage_name
    sorts:
    - sf__opportunities.stage_name
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
    hidden_fields:
    - sf__opportunities.id
    listen:
      opportunity_id_filter: sf__opportunities.id
    row: 3
    col: 0
    width: 6
    height: 3

  - title: Monthly Usage
    name: monthly_usage
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

  - title: Booking's Value
    name: bookings_value
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.sum_of_bookings_value
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
    single_value_title: Booking's Value
    listen:
      opportunity_id_filter: sf__opportunities.id
    row: 9
    col: 0
    width: 6
    height: 3

  - title: Close Date
    name: close_date
    model: salesforce
    explore: sf__opportunities
    type: single_value
    fields:
    - sf__opportunities.close_date
    fill_fields:
    - sf__opportunities.close_date
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
    single_value_title: Close Date
    listen:
      opportunity_id_filter: sf__opportunities.id
    row: 6
    col: 0
    width: 6
    height: 3

  filters:

  - name: opportunity_id_filter
    title: Opportunity ID
    type: string_filter
    default_value: "None"
    allow_multiple_values: false
    required: true

  - name: account_id_filter
    title: Account ID
    type: string_filter
    default_value: "None"
    allow_multiple_values: false
    required: true

  - name: usage_date_filter
    title: Usage Date
    type: date_filter
    default_value:
    allow_multiple_values: true
    required: false
