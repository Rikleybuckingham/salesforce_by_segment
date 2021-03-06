- dashboard: marketing_overview
  title: Marketing Overview
  layout: newspaper

  elements:

  - name: Marketing Overview
    type: text
    title_text: Marketing Overview
    row: 0
    col: 0
    width: 24
    height: 2

  - name: Funnel Details
    type: text
    title_text: Funnel Details
    row: 10
    col: 0
    width: 24
    height: 2

  - name: Lead Details
    type: text
    title_text: Lead Details
    row: 20
    col: 0
    width: 12
    height: 2

  - name: Opportunity Details
    type: text
    title_text: Opportunity Details
    row: 20
    col: 12
    width: 12
    height: 2

  - name: MQL Details
    type: text
    title_text: MQL Details
    subtitle_text: Click on a "Lead Name" or "Lead Owner" for specific metrics
    row: 38
    col: 0
    width: 24
    height: 2

  - title: MQLs
    name: MQLs
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.net_mql_count
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
      Lead Created Date: sf_leads.created_date
    row: 2
    col: 8
    width: 4
    height: 2

  - title: Active Leads
    name: Active Leads
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.currently_active_leads_count
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
      Lead Created Date: sf_leads.created_date
    row: 2
    col: 4
    width: 4
    height: 2

  - title: New Leads
    name: New Leads
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.count
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
      Lead Created Date: sf_leads.created_date
    row: 2
    col: 0
    width: 4
    height: 2

  - title: New Opportunities
    name: New Opportunities
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_opportunities.count
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
      Lead Created Date: sf_leads.created_date
    row: 4
    col: 0
    width: 4
    height: 2

  - title: Month Over Month Creation
    name: Month Over Month Creation
    model: salesforce
    explore: sf_leads
    type: looker_area
    fields:
    - sf_leads.created_month
    - sf_leads.count
    - sf_leads.net_mql_count
    - sf_leads.converted_to_opportunity_count
    - sf_opportunities.count_sql
    - sf_opportunities.count_won
    filters:
      sf_leads.created_date: 2 years
      sf_leads.count: NOT NULL
    sorts:
    - sf_leads.created_month desc
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    hidden_series:
    - sf_leads.count
    - sf_opportunities.count_won
    series_colors:
      sf_opportunities.count_won: "#5eb297"
      sf_opportunities.count_sql: "#9ae3cc"
      sf_leads.net_mql_count: "#4281c3"
      sf_leads.converted_to_opportunity_count: "#70b3fc"
      sf_leads.count: "#435978"
    column_group_spacing_ratio:
    focus_on_hover: true
    series_labels:
      sf_leads.count: Leads
      sf_leads.net_mql_count: MQLs
      sf_leads.converted_to_opportunity_count: Opportunities
      sf_opportunities.count_sql: SQLs
      sf_opportunities.count_won: Won Opportunities
    y_axes:
    - label: Count
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf_leads.count
        name: Leads
        axisId: sf_leads.count
      - id: sf_leads.net_mql_count
        name: MQLs
        axisId: sf_leads.net_mql_count
      - id: sf_leads.converted_to_opportunity_count
        name: Opportunities
        axisId: sf_leads.converted_to_opportunity_count
      - id: sf_opportunities.count_sql
        name: Active Opportunities
        axisId: sf_opportunities.count_sql
      - id: sf_opportunities.count_won
        name: Won Opportunities
        axisId: sf_opportunities.count_won
    x_axis_label: Created Month
    column_spacing_ratio:
    row: 2
    col: 12
    width: 12
    height: 8

  - title: Active Opportunities
    name: Active Opportunities
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_opportunities.count_sql
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
      Lead Created Date: sf_leads.created_date
    row: 4
    col: 4
    width: 4
    height: 2

  - title: Won Opportunities
    name: Won Opportunities
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_opportunities.count_won
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
      Lead Created Date: sf_leads.created_date
    row: 4
    col: 8
    width: 4
    height: 2

  - title: Contact Form
    name: Contact Form
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.count
    filters:
      sf_leads.acquisition_program: WF Contact Form
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
      Lead Created Date: sf_leads.created_date
    row: 6
    col: 0
    width: 4
    height: 2

  - title: Trial-Platform Form
    name: Trial-Platform Form
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.count
    filters:
      sf_leads.acquisition_program: WF Trial-Platform Form
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
      Lead Created Date: sf_leads.created_date
    row: 6
    col: 4
    width: 4
    height: 2

  - title: Trial-SCCM Free Form
    name: Trial-SCCM Free Form
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.count
    filters:
      sf_leads.acquisition_program: WF Trial-SCCM Free Form
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
      Lead Created Date: sf_leads.created_date
    row: 6
    col: 8
    width: 4
    height: 2

  - title: Trial Request Form
    name: Trial Request Form
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.count
    filters:
      sf_leads.acquisition_program: WF Trial Request Form
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
      Lead Created Date: sf_leads.created_date
    row: 8
    col: 0
    width: 4
    height: 2

  - title: Trial-Video Form
    name: Trial-Video Form
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.count
    filters:
      sf_leads.acquisition_program: WF Trial-Video Form
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
      Lead Created Date: sf_leads.created_date
    row: 8
    col: 4
    width: 4
    height: 2

  - title: Sales Generated
    name: Sales Generated
    model: salesforce
    explore: sf_leads
    type: single_value
    fields:
    - sf_leads.count
    filters:
      sf_leads.acquisition_program: Sales Generated
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
      Lead Created Date: sf_leads.created_date
    row: 8
    col: 8
    width: 4
    height: 2

  - title: Lead to Win Funnel
    name: Lead to Win Funnel
    model: salesforce
    explore: sf_leads
    type: looker_column
    fields:
    - sf_leads.count
    - sf_leads.net_mql_count
    - sf_leads.converted_to_opportunity_count
    - sf_opportunities.count_sql
    - sf_opportunities.count_won
    sorts:
    - sf_leads.count desc
    limit: 500
    stacking: ''
    colors:
    - 'palette: Default'
    show_value_labels: true
    label_density: 10
    label_color:
    - "#635189"
    - "#a2dcf3"
    - "#1ea8df"
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    series_labels:
      sf_leads.count: Leads
      sf_opportunities.count_new_business: Opportunities
      sf_opportunities.count_new_business_won: Won Opportunities
      sf_leads.converted_to_account_count: Accounts
      sf_leads.converted_to_contact_count: Contacts
      sf_leads.converted_to_opportunity_count: Opportunities
      sf_leads.net_mql_count: MQLs
      sf_opportunities.count_sql: SQLs
      sf_opportunities.count_won: Won Opportunities
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_labels: false
    show_dropoff: true
    series_colors:
      sf_opportunities.count_won: "#5eb297"
      sf_opportunities.count_sql: "#9ae3cc"
      sf_leads.converted_to_opportunity_count: "#70b3fc"
      sf_leads.net_mql_count: "#4281c3"
      sf_leads.count: "#435978"
    limit_displayed_rows: false
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    ordering: none
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_series: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf_leads.count
        name: Leads
        axisId: sf_leads.count
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 562
      - id: sf_leads.converted_to_account_count
        name: Sf Leads Converted to Account Count
        axisId: sf_leads.converted_to_account_count
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 565
      - id: sf_leads.converted_to_contact_count
        name: Sf Leads Converted to Contact Count
        axisId: sf_leads.converted_to_contact_count
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 568
      - id: sf_leads.converted_to_opportunity_count
        name: Sf Leads Converted to Opportunity Count
        axisId: sf_leads.converted_to_opportunity_count
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 571
      __FILE: salesforce/marketing_overview.dashboard.lookml
      __LINE_NUM: 550
    hide_legend: false
    listen:
      Lead Created Date: sf_leads.created_date
    row: 12
    col: 0
    width: 12
    height: 8

  - title: Sales Stage Velocity
    name: Sales Stage Velocity
    model: salesforce
    explore: sf_leads
    type: looker_column
    fields:
    - sf_leads.average_mql_velocity
    - sf_leads.average_opportunity_velocity
    - sf_opportunities.average_active_velocity
    - sf_opportunities.average_won_velocity
    sorts:
    - sf_opportunities.average_won_velocity desc
    limit: 500
    query_timezone: America/Los_Angeles
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors:
    - 'palette: Default'
    series_colors:
      sf_leads.average_mql_velocity: "#4281c3"
      sf_opportunities.average_won_velocity: "#5eb297"
      sf_leads.average_opportunity_velocity: "#70b3fc"
      sf_opportunities.average_active_velocity: "#9ae3cc"
    series_labels:
      sf_leads.average_account_velocity: Accounts
      sf_leads.average_contact_velocity: Contacts
      sf_leads.average_opportunity_velocity: Opportunities
      sf_opportunities.average_won_velocity: Won
      sf_opportunities.average_lost_velocity: Lost
    y_axes:
    - label: Velocity in Days
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: ''
      series:
      - id: sf_leads.average_account_velocity
        name: Accounts
        axisId: sf_leads.average_account_velocity
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 349
      - id: sf_leads.average_contact_velocity
        name: Contacts
        axisId: sf_leads.average_contact_velocity
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 352
      - id: sf_leads.average_opportunity_velocity
        name: Opportunities
        axisId: sf_leads.average_opportunity_velocity
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 355
      - id: sf_opportunities.average_won_velocity
        name: Won
        axisId: sf_opportunities.average_won_velocity
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 358
      - id: sf_opportunities.average_lost_velocity
        name: Lost
        axisId: sf_opportunities.average_lost_velocity
        __FILE: salesforce/marketing_overview.dashboard.lookml
        __LINE_NUM: 361
      __FILE: salesforce/marketing_overview.dashboard.lookml
      __LINE_NUM: 337
    hidden_series:
    - sf_opportunities.average_lost_velocity
    series_types: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    listen:
      Lead Created Date: sf_leads.created_date
    row: 12
    col: 12
    width: 12
    height: 8

  - title: Leads by Acquisition Program
    name: Leads by Acquisition Program
    model: salesforce
    explore: sf_leads
    type: looker_column
    fields:
    - sf_leads.count
    - sf_leads.acquisition_program
    - sf_leads.net_mql_count
    sorts:
    - sf_leads.count desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      sf_leads.count: "#4281c3"
      sf_leads.net_mql_count: "#70b3fc"
      sf_opportunities.count: "#9ae3cc"
      sf_opportunities.count_won: "#5eb297"
    series_labels:
      sf_leads.net_mql_count: MQLs
      sf_leads.count: Leads
    y_axes:
    - label: Lead Count
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf_leads.count
        name: Leads
        axisId: sf_leads.count
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf_leads.net_mql_count
        name: MQLs
        axisId: sf_leads.net_mql_count
    listen:
      Lead Created Date: sf_leads.created_date
    row: 22
    col: 0
    width: 12
    height: 8

  - title: Opportunities by Channel Partner
    name: Opportunities by Channel Partner
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.channel_partner
    - sf_opportunities.count
    - sf_opportunities.count_won
    sorts:
    - sf_opportunities.count desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      sf_opportunities.count: "#4281c3"
      sf_opportunities.count_won: "#5eb297"
    y_axes:
    - label: Opportunity Count
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf_opportunities.count
        name: Sf Opportunities
        axisId: sf_opportunities.count
      - id: sf_opportunities.count_won
        name: Count Won
        axisId: sf_opportunities.count_won
    listen:
      Lead Created Date: sf_opportunities.created_date
    row: 22
    col: 12
    width: 12
    height: 8

  - title: Leads by Status
    name: Leads by Status
    model: salesforce
    explore: sf_leads
    type: looker_column
    fields:
    - sf_leads.count
    - sf_leads.status
    filters:
      sf_leads.created_date: ''
    sorts:
    - sf_leads.count desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      sf_leads.count: "#559be6"
    series_labels:
      sf_leads.count: Lead Count
    y_axes:
    - label: Lead Count
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf_leads.count
        name: Lead Count
        axisId: sf_leads.count
    listen:
      Lead Created Date: sf_leads.created_date
    row: 30
    col: 0
    width: 12
    height: 8

  - title: Opportunities by Type
    name: Opportunities by Type
    model: salesforce
    explore: sf_opportunities
    type: looker_column
    fields:
    - sf_opportunities.count
    - sf_opportunities.type
    sorts:
    - sf_opportunities.count desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      sf_opportunities.count: "#559be6"
    y_axes:
    - label: Opportunity Count
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sf_opportunities.count
        name: Sf Opportunities
        axisId: sf_opportunities.count
    listen:
      Lead Created Date: sf_opportunities.created_date
    row: 30
    col: 12
    width: 12
    height: 8

  - title: MQLs Table
    name: MQLs Table
    model: salesforce
    explore: sf_leads
    type: table
    fields:
    - sf_leads.company
    - lead_owners.name
    - sf_leads.status
    - sf_leads.acquisition_program
    - sf_leads.mql_date
    - sf_leads.lead_id
    filters:
      sf_leads.mql_date: NOT NULL
      sf_leads.company: -"{\"session^_key\":\"5.X4COxCPeyJj6CQ.1516399649.13-100014549718341\"^,\"uid\":100014549718341^,\"secret\":\"8ac09772e561517937178ee688f45432\"^,\"access^_token\":\"EAAAAAYsX7TsBADGdXs8yl99fH60gvH64ZBZAlGeVJPL8qNtwwvQROZBHoLm2Yr82mdiKOyzZCjHVw2BDFycXKIIB9ed7hvWWN8a49xcq9v4y"
      sf_leads.status: New,Qualified,Working
    sorts:
    - sf_leads.mql_date desc
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_labels:
      lead_owners.name: Lead Owner
      sf_leads.company: Lead Name
    hidden fields: [sf_leads.lead_id]
    row: 40
    col: 0
    width: 24
    height: 7

  filters:

  - name: Lead Created Date
    title: Lead Created Date
    type: field_filter
    default_value: this year
    model: salesforce
    explore: sf_leads
    field: sf_leads.created_date
    listens_to_filters: []
    allow_multiple_values: true
    required: false