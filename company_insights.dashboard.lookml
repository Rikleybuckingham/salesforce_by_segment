- dashboard: company_insights
  title: Company Insights
  layout: newspaper

  elements:

  - title: Company
    name: Company
    model: salesforce
    explore: sf_accounts
    type: single_value
    fields:
    - sf_accounts.name
    sorts:
    - sf_accounts.name
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
      account_id_filter: sf_accounts.id
    row: 0
    col: 0
    width: 6
    height: 3

  - title: ARR
    name: ARR
    model: salesforce
    explore: sf_accounts
    type: single_value
    fields:
    - sf_accounts.annual_recurring_revenue
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
      account_id_filter: sf_accounts.id
    row: 0
    col: 6
    width: 6
    height: 3

  - title: Seats Licensed
    name: Seats Licensed
    model: salesforce
    explore: sf_accounts
    type: single_value
    fields:
    - sf_accounts.seats_licensed
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
      account_id_filter: sf_accounts.id
    row: 0
    col: 12
    width: 6
    height: 3

  - title: Account Owner
    name: account_owner
    model: salesforce
    explore: sf_accounts
    type: single_value
    fields:
    - owner.name
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
      account_id_filter: sf_accounts.id
    row: 0
    col: 18
    width: 6
    height: 3

  - title: Live Event Count
    name: Live Event Count
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.unique_content
    limit: 500
    filters:
      usage__delivery.type: 'Live'
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
    single_value_title: Live Event Count
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 6
    col: 0
    width: 4
    height: 3

  - title: VoD Count
    name: VoD Count
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.unique_content
    limit: 500
    filters:
      usage__delivery.type: 'VoD'
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
    single_value_title: VoD Count
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 6
    col: 4
    width: 4
    height: 3

  - title: Delivery Count
    name: Delivery Count
    model: company_usage
    explore: usage__delivery
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
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 6
    col: 8
    width: 4
    height: 3

  - title: Agent Count
    name: Agent Count
    model: company_usage
    explore: usage__delivery
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
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 6
    col: 12
    width: 4
    height: 3

  - title: Total Peer GB
    name: Total Peer GB
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.peer_gb_sum
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
    single_value_title: Total Peer GB
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 6
    col: 16
    width: 4
    height: 3

  - title: Total Origin GB
    name: Total Origin GB
    model: company_usage
    explore: usage__delivery
    type: single_value
    fields:
    - usage__delivery.origin_gb_sum
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
    single_value_title: Total Origin GB
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 6
    col: 20
    width: 4
    height: 3

  - name: monthly_live_events
    title: Monthly Live Events
    model: company_usage
    explore: usage__delivery
    type: looker_area
    fields: [usage__delivery.unique_content, usage__delivery.start_month]
    filters:
      usage__delivery.type: 'Live'
    fill_fields: [usage__delivery.start_month]
    sorts: [usage__delivery.start_month desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    series_colors:
      usage__delivery.unique_content: "#559be6"
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 9
    col: 0
    width: 12
    height: 8

  - name: monthly_vod
    title: Monthly VoD
    model: company_usage
    explore: usage__delivery
    type: looker_area
    fields: [usage__delivery.unique_content, usage__delivery.start_month]
    filters:
      usage__delivery.type: 'VoD'
    fill_fields: [usage__delivery.start_month]
    sorts: [usage__delivery.start_month desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    series_colors:
      usage__delivery.unique_content: "#559be6"
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 9
    col: 12
    width: 12
    height: 8

  - title: Monthly Active Agents
    name: Monthly Active Agents
    model: company_usage
    explore: usage__delivery
    type: looker_area
    fields:
    - usage__delivery.start_month
    - usage__delivery.unique_agent_count
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      usage__delivery.unique_agent_count: "#559be6"
    series_types: {}
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 17
    col: 0
    width: 12
    height: 8

  - title: Monthly GB by Type
    name: monthly_gb_by_type
    model: company_usage
    explore: usage__delivery
    type: looker_area
    fields:
    - usage__delivery.start_month
    - usage__delivery.origin_gb_sum
    - usage__delivery.peer_gb_sum
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      usage__delivery.origin_gb_sum: "#4281c3"
      usage__delivery.peer_gb_sum: "#70b3fc"
    series_types: {}
    y_axes: [{label: Total GB, orientation: left, series: [{id: usage__delivery.origin_gb_sum, name: Usage Delivery Origin GB Sum, axisId: usage__delivery.origin_gb_sum},
      {id: usage__delivery.peer_gb_sum, name: Usage Delivery Peer GB Sum, axisId: usage__delivery.peer_gb_sum}],
      showLabels: true, showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    listen:
      company_id_filter: usage__delivery.company_id
      usage_date_filter: usage__delivery.start_date
      dms_filter: usage__delivery.dms
    row: 17
    col: 12
    width: 12
    height: 8

  - title: Products
    name: Products
    model: salesforce
    explore: sf_accounts
    type: table
    fields:
    - sf_accounts.admin_center
    - sf_accounts.clientless_streaming
    - sf_accounts.ecdn
    - sf_accounts.live
    - sf_accounts.media_center
    - sf_accounts.media_center_live_streaming
    - sf_accounts.network_readiness_tester
    - sf_accounts.saml
    - sf_accounts.share_point
    - sf_accounts.skype_meeting_broadcast
    - sf_accounts.webcaster
    sorts:
    - sf_accounts.admin_center
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
      account_id_filter: sf_accounts.id
    row: 25
    col: 0
    width: 24
    height: 2

  - title:  Current Opportunities
    name: current_opportunities
    model: salesforce
    explore: sf_opportunities
    type: table
    fields:
    - sf_opportunities.opportunity_name
    - sf_opportunities.bookings_value
    - sf_opportunities.type
    - sf_opportunities.stage_name
    - opportunity_owners.name
    - sf_opportunities.channel_partner
    - sf_opportunities.contract_term_months
    - sf_opportunities.close_date
    filters:
      sf_opportunities.close_date: after 0 minutes ago
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
      account_id_filter: sf_accounts.id
    row: 27
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

  - name: company_id_filter
    title: Company ID
    type: number_filter
    default_value:
    allow_multiple_values: false
    required: false

  - name: dms_filter
    title: Dms
    type: string_filter
    default_value:
    allow_multiple_values: false
    required: false

  - name: usage_date_filter
    title: Usage Date
    type: date_filter
    default_value: 6 months
    allow_multiple_values: true
    required: false