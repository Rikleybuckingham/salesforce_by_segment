- dashboard: content_details
  title: Content Details
  layout: newspaper

  filters:

  - name: content_moid_filter
    title: Content Moid
    type: string_filter
    default_value: "None"

  - name: company_id_filter
    title: Company ID
    type: number_filter

  - name: source_env_filter
    title: Source Environment
    type: string_filter

  - name: time_filter
    title: Time Filter
    type: date_filter

  elements:

  - name: Title
    title: Title
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.content_title
    sorts:
    - usage__delivery.content_title
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      content_moid_filter: usage__delivery.content_moid
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The title of the content'
      state: expanded
      display: hover
    row: 2
    col: 0
    width: 8
    height: 4

  - name: Deliveries
    title: Deliveries
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.count
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The number of delivery records for the content'
      state: expanded
      display: hover
    row: 2
    col: 8
    width: 3
    height: 4

  - name: agent_count
    title: Agents
    type: single_value
    model: company_usage
    explore: usage__delivery
    measures: [usage__delivery.unique_agent_count]
    limit: '500'
    column_limit: '50'
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
    single_value_title: Unique Agents
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The number of distinct Agent IDs with deliveries for the content'
      state: expanded
      display: hover
    row: 2
    col: 11
    width: 3
    height: 4

  - name: Origin GB
    title: Origin GB
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.origin_gb_sum
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The total number of origin gigabytes delivered for the content'
      state: expanded
      display: hover
    row: 2
    col: 14
    width: 3
    height: 4

  - name: Peer GB
    title: Peer GB
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.peer_gb_sum
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The total number of peer gigabytes delivered for the content'
      state: expanded
      display: hover
    row: 2
    col: 17
    width: 3
    height: 4

  - name: delivery_status
    title: Deliveries by Status
    model: company_usage
    explore: usage__delivery
    type: looker_pie
    fields: [usage__delivery.count, usage__delivery.status]
    fill_fields: [usage__delivery.status]
    sorts: [usage__delivery.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      Completed: "#5eb297"
      In Progress: "#9ae3cc"
      Failed: "#d75c44"
      Canceled: "#fa8d78"
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The delivery status for the content and the corresponding delivery count'
      state: expanded
      display: hover
    row: 18
    col: 0
    width: 8
    height: 8

  - name: Top Localities and Peering
    title: Top Localities and Peering
    model: company_usage
    explore: usage__delivery
    type: looker_bar
    fields: [usage__delivery.locality, usage__delivery.peer_bytes_sum, usage__delivery.total_bytes_sum, usage__delivery.peering_percentage,
      usage__delivery.unique_agent_count]
    sorts: [usage__delivery.unique_agent_count desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size: '12'
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types:
      usage__delivery.peering_percentage: scatter
      peering_percentage: scatter
    hidden_fields: [usage__delivery.peer_bytes_sum, usage__delivery.total_bytes_sum]
    series_colors:
      usage__delivery.peering_percentage: "#435978"
      usage__delivery.unique_agent_count: "#559be6"
    y_axes: [{label: !!null '', orientation: top, showLabels: true, showValues: true,
        tickDensity: default, type: linear, unpinAxis: false, series: [{id: usage__delivery.unique_agent_count,
            name: Agent Count, __FILE: salesforce/content_details.dashboard.lookml,
            __LINE_NUM: 354, axisId: usage__delivery.unique_agent_count}], __FILE: salesforce/content_details.dashboard.lookml,
        __LINE_NUM: 342}, {label: '', maxValue: 1, minValue: 0, orientation: bottom,
        showLabels: true, showValues: true, tickDensity: default, type: linear, unpinAxis: false,
        series: [{id: usage__delivery.peering_percentage, name: Peering Percentage,
            __FILE: salesforce/content_details.dashboard.lookml, __LINE_NUM: 368, axisId: usage__delivery.peering_percentage}],
        __FILE: salesforce/content_details.dashboard.lookml, __LINE_NUM: 356}]
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The number of agents and overall peering percentage for each locality'
      state: expanded
      display: hover
    row: 6
    col: 0
    width: 6
    height: 12

  - name: Top External IPs and Peering
    title: Top External IPs and Peering
    model: company_usage
    explore: usage__delivery
    type: looker_bar
    fields:
    - usage__delivery.external_ip
    - usage__delivery.peer_bytes_sum
    - usage__delivery.origin_bytes_sum
    - usage__delivery.peering_percentage
    - usage__delivery.unique_agent_count
    sorts:
    - usage__delivery.unique_agent_count desc
    limit: 10
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size: '12'
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types:
      usage__delivery.peering_percentage: scatter
    hidden_fields:
    - usage__delivery.peer_bytes_sum
    - usage__delivery.origin_bytes_sum
    series_colors:
      usage__delivery.peering_percentage: "#435978"
      usage__delivery.unique_agent_count: "#559be6"
    y_axes:
    - label: Agents
      maxValue:
      minValue:
      orientation: top
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: usage__delivery.unique_agent_count
        name: Agent Count
    - label: Peering Percent
      maxValue: 1
      minValue: 0
      orientation: bottom
      showLabels: false
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: usage__delivery.peering_percentage
        name: Peering Percentage
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The number of agents and overall peering percentage for each external IP'
      state: expanded
      display: hover
    row: 6
    col: 6
    width: 6
    height: 12

  - name: Deliveries by Location
    title: Deliveries by Location
    model: company_usage
    explore: usage__location
    type: looker_map
    fields:
    - usage__location.location
    - usage__location.count
    filters:
    usage__location.company_id_filter: ''
    usage__location.content_moid_filter: ''
    usage__location.type_filter: ''
    sorts:
    - usage__location.count desc
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
    map_marker_radius_fixed:
    series_types: {}
    listen:
      content_moid_filter: usage__location.content_moid_filter
      time_filter: usage__location.date_filter
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    row: 6
    col: 12
    width: 12
    height: 12

  - name: Daily Deliveries
    title: Daily Deliveries
    model: company_usage
    explore: usage__delivery
    type: looker_column
    fields: [usage__delivery.count, usage__delivery.start_date]
    fill_fields: [usage__delivery.start_date]
    sorts: [usage__delivery.start_date]
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    x_axis_label_rotation: -45
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    column_spacing_ratio: ''
    column_group_spacing_ratio:
    series_colors:
      usage__delivery.count: "#559be6"
    series_labels:
      usage__delivery.count: Deliveries
      0 - Delivery Data Delivery Count: Download
      1 - Delivery Data Delivery Count: On Demand
      2 - Delivery Data Delivery Count: Live
      VoD - Delivery Data Delivery Count: On Demand
    x_axis_label: Date
    y_axis_labels: [Deliveries]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The number of deliveries by date'
      state: expanded
      display: hover
    row: 18
    col: 8
    width: 8
    height: 8

  - name: GB by Source
    title: GB by Source
    model: company_usage
    explore: usage__delivery
    type: looker_column
    fields:
    - usage__delivery.origin_bytes_sum
    - usage__delivery.lan_bytes_sum
    - usage__delivery.wan_bytes_sum
    - usage__delivery.start_date
    fill_fields:
    - usage__delivery.start_date
    sorts:
    - usage__delivery.start_date
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: origin
      label: Origin
      expression: "${usage__delivery.origin_bytes_sum} / 1000000000"
      value_format:
      value_format_name: decimal_0
    - table_calculation: wan
      label: WAN
      expression: "${usage__delivery.wan_bytes_sum} / 1000000000"
      value_format:
      value_format_name:
    - table_calculation: lan
      label: LAN
      expression: "${usage__delivery.lan_bytes_sum} / 1000000000"
      value_format:
      value_format_name: decimal_0
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    x_axis_label_rotation: -45
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    series_labels:
      usage__delivery.lan_bytes_sum: LAN
      usage__delivery.wan_bytes_sum: WAN
      usage__delivery.origin_bytes_sum: Origin
    series_colors:
      origin: "#4281c3"
      wan: "#559be6"
      lan: "#70b3fc"
    hidden_fields:
    - usage__delivery.origin_bytes_sum
    - usage__delivery.lan_bytes_sum
    - usage__delivery.wan_bytes_sum
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The number of gigabytes delivered on each day broken up by Origin, WAN, and LAN'
      state: expanded
      display: hover
    row: 18
    col: 16
    width: 8
    height: 8

  - name: Agent Details
    title: Agent Details
    model: company_usage
    explore: usage__delivery
    type: table
    fields: [usage__delivery.id, usage__delivery.short_node_id, usage__delivery.locality,
      usage__delivery.external_ip, usage__delivery.status, usage__delivery.origin_bytes,
      usage__delivery.peer_bytes, usage__delivery.total_bytes, usage__delivery.start_time,
      usage__delivery.end_time]
    sorts: [usage__delivery.id desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_mb
      label: Total MB
      expression: "${usage__delivery.total_bytes}*0.000001"
      value_format:
      value_format_name: decimal_1
      _kind_hint: dimension
      _type_hint: number
    - table_calculation: peering_percent
      label: Peering Percent
      expression: "${usage__delivery.peer_bytes}/${usage__delivery.total_bytes}"
      value_format:
      value_format_name: percent_1
      _kind_hint: dimension
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: [usage__delivery.total_bytes, usage__delivery.peer_bytes, usage__delivery.origin_bytes]
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The agents with delivery records of the content'
      state: expanded
      display: hover
    row: 26
    col: 0
    width: 24
    height: 8

  - name: Peering Efficiency KPI
    title: Peering Efficiency KPI
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.peer_bytes_sum
    - usage__delivery.total_bytes_sum
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: peering_efficiency
      label: peering efficiency
      expression: "${usage__delivery.peer_bytes_sum}/${usage__delivery.total_bytes_sum}"
      value_format:
      value_format_name: percent_0
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
    hidden_fields:
    - usage__delivery.peer_bytes_sum
    - usage__delivery.total_bytes_sum
    series_types: {}
    single_value_title: Peering Efficiency
    listen:
      content_moid_filter: usage__delivery.content_moid
      time_filter: usage__delivery.start_time
      company_id_filter: usage__delivery.company_id
      source_env_filter: usage__delivery.dms
    note:
      text: 'The peer bytes sum divided by total bytes sum for the content'
      state: expanded
      display: hover
    row: 2
    col: 20
    width: 4
    height: 4

  - name: Network Content Details
    type: text
    title_text: Network Content Details
    subtitle_text: Information about a content item delivered over the network
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
