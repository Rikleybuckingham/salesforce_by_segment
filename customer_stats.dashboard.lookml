- dashboard: customer_stats
  title: Customer Stats
  refresh: 180 seconds
  layout: newspaper

  elements:

    - title: Active Agents
      name: Active Agents
      model: company_usage
      explore: usage_delivery
      type: single_value
      fields:
      - usage_delivery.unique_agent_count
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
        Time Period: usage_delivery.start_date
        Source Environment: usage_delivery.dms
        Event Title: usage_delivery.content_title
      row: 0
      col: 0
      width: 8
      height: 2

    - title: Live Events
      name: Live Events
      model: company_usage
      explore: usage_delivery
      type: single_value
      fields:
        - usage_delivery.unique_content
      filters:
        usage_delivery.type: Live
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
        Time Period: usage_delivery.start_date
        Source Environment: usage_delivery.dms
        Event Title: usage_delivery.content_title
      row: 0
      col: 8
      width: 8
      height: 2

    - title: Deliveries
      name: Deliveries
      model: company_usage
      explore: usage_delivery
      type: single_value
      fields:
        - usage_delivery.count
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
        Time Period: usage_delivery.start_date
        Source Environment: usage_delivery.dms
        Event Title: usage_delivery.content_title
      row: 2
      col: 0
      width: 12
      height: 2

    - title: GB Saved
      name: GB Saved
      model: company_usage
      explore: usage_delivery
      type: single_value
      fields:
      - usage_delivery.peer_gb_sum
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
        Time Period: usage_delivery.start_date
        Source Environment: usage_delivery.dms
        Event Title: usage_delivery.content_title
      row: 2
      col: 12
      width: 12
      height: 2

    - title: Videos Watched
      name: Videos Watched
      model: company_usage
      explore: usage_delivery
      type: single_value
      fields:
      - usage_delivery.unique_content
      filters:
        usage_delivery.type: VoD
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
        Time Period: usage_delivery.start_date
        Source Environment: usage_delivery.dms
        Event Title: usage_delivery.content_title
      row: 0
      col: 16
      width: 8
      height: 2

    - title: Top 10 Live Events
      name: Top 10 Live Events
      model: company_usage
      explore: usage_delivery
      type: table
      fields:
        - usage_delivery.content_title
        - usage_delivery.content_moid
        - usage_company.name
        - usage_delivery.dms
        - usage_delivery.first_start_time
        - usage_delivery.count
        - usage_delivery.unique_agent_count
        - usage_delivery.total_bytes_sum
        - usage_delivery.peer_bytes_sum
      filters:
        usage_delivery.type: Live
      sorts:
        - usage_delivery.unique_agent_count desc
      limit: 10
      dynamic_fields:
      - table_calculation: event_peering
        label: Event Peering
        expression: "${usage_delivery.peer_bytes_sum}/${usage_delivery.total_bytes_sum}"
        value_format:
        value_format_name: percent_0
        _kind_hint: measure
        _type_hint: number
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
      hidden_fields:
        - usage_delivery.peer_bytes_sum
        - usage_delivery.total_bytes_sum
        - usage_delivery.content_moid
      listen:
        Time Period: usage_delivery.start_date
        Source Environment: usage_delivery.dms
        Event Title: usage_delivery.content_title
      row: 15
      col: 0
      width: 24
      height: 6

    - title: Peer vs Origin Bytes
      name: Peer vs Origin Bytes
      model: company_usage
      explore: usage_delivery
      type: looker_donut_multiples
      fields:
        - usage_delivery.peer_bytes_sum
        - usage_delivery.origin_bytes_sum
      limit: 500
      show_value_labels: true
      font_size: 12
      value_labels: legend
      label_type: labPer
      stacking: ''
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
      series_colors:
        usage_delivery.peer_bytes_sum: "#4281c3"
        usage_delivery.origin_bytes_sum: "#70b3fc"
      hide_legend: false
      listen:
        Time Period: usage_delivery.start_date
        Source Environment: usage_delivery.dms
        Event Title: usage_delivery.content_title
      row: 4
      col: 16
      width: 8
      height: 11

    - name: Deliveries by Location
      title: Deliveries by Location
      model: company_usage
      explore: usage_location
      type: looker_map
      fields:
      - usage_location.location
      - usage_location.count
      filters:
      usage_location.company_id_filter: ''
      usage_location.content_moid_filter: ''
      usage_location.type_filter: ''
      sorts:
      - usage_location.count desc
      limit: 500
      query_timezone: America/Los_Angeles
      map_plot_mode: points
      heatmap_gridlines: false
      heatmap_gridlines_empty: false
      heatmap_opacity: 0.5
      show_region_field: true
      draw_map_labels_above_data: true
      map_tile_provider: light
      map_position: fit_data
      map_scale_indicator: 'off'
      map_pannable: true
      map_zoomable: true
      map_marker_type: circle
      map_marker_icon_name: leaf
      map_marker_radius_mode: proportional_value
      map_marker_units: pixels
      map_marker_proportional_scale_type: log
      map_marker_color_mode: value
      show_view_names: true
      show_legend: true
      quantize_map_value_colors: false
      reverse_map_value_colors: true
      map_latitude: 38.01726302540855
      map_longitude: -28.111267089843754
      map_zoom: 3
      map_value_colors:
      - "#202c3a"
      - "#435978"
      - "#6181ae"
      - "#4281c3"
      - "#559be6"
      - "#70b3fc"
      map_marker_radius_min: 2
      map_marker_radius_max: 20
      map_marker_radius_fixed: 2
      series_types: {}
      listen:
        Time Period: usage_location.date_filter
        Source Environment: usage_location.source_env_filter
        Event Title: usage_location.title
      row: 4
      col: 0
      width: 16
      height: 11

  filters:

    - name: Time Period
      title: Time Period
      type: date_filter
      default_value: 1 days
      allow_multiple_values: true
      required: true

    - name: Source Environment
      title: Source Environment
      type: string_filter
      default_value: ''
      required: false

    - name: Event Title
      title: Event Title
      type: string_filter
      default_value: "-%NRT%,-%Test%,-%test%,-%nrt%,-%Always%,-%always%"
      allow_multiple_values: true
      required: false