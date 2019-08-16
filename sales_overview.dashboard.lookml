- dashboard: sales_overview
  title: Sales Overview
  layout: newspaper

  elements:

  - title: Current FQ - New Forecast
    name: Current FQ - New Forecast
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won,04 - Forecast,05 - Commit
      sf_opportunities.type: New
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '2350000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: NEW - Forecast
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 0
    col: 0
    width: 6
    height: 4

  - title: Current FQ - Upgrade/Upsell Forecast
    name: Current FQ - Upgrade/Upsell Forecast
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won,05 - Commit,04 - Forecast
      sf_opportunities.type: Upgrade / Upsell
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '550000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: "#8b3322"
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: UPSELL - Forecast
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 0
    col: 6
    width: 6
    height: 4

  - title: Current FQ - Renewal Forecast
    name: Current FQ - Renewal Forecast
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won,05 - Commit,04 - Forecast
      sf_opportunities.type: Renewal
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '4850000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: RENEWAL - Forecast
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 0
    col: 12
    width: 6
    height: 4

  - title: Current FQ - Total Forecast
    name: Current FQ - Total Forecast
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won,05 - Commit,04 - Forecast
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '7750000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: TOTAL - Forecast
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 0
    col: 18
    width: 6
    height: 4

  - title: Current FQ - New Forecast - Closed/Won
    name: Current FQ - New Forecast - Closed/Won
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won
      sf_opportunities.type: New
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '2350000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: NEW - Actual
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 4
    col: 0
    width: 6
    height: 4

  - title: Current FQ - Upgrade/Upsell Forecast - Closed/Won
    name: Current FQ - Upgrade/Upsell Forecast - Closed/Won
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won
      sf_opportunities.type: Upgrade / Upsell
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '550000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: "#8b3322"
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: UPSELL - Actual
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 4
    col: 6
    width: 6
    height: 4

  - title: Current FQ - Renewal Forecast - Closed/Won
    name: Current FQ - Renewal Forecast - Closed/Won
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won
      sf_opportunities.type: Renewal
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '4850000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: RENEWAL - Actual
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 4
    col: 12
    width: 6
    height: 4

  - title: Current FQ - Total Forecast - Closed/Won
    name: Current FQ - Total Forecast - Closed/Won
    model: salesforce
    explore: sf_opportunities
    type: single_value
    fields:
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.close_date: this quarter
      sf_opportunities.stage_name: 06 - Closed Won
    sorts:
    - plan desc
    limit: 500
    dynamic_fields:
    - table_calculation: plan
      label: Plan
      expression: '7750000'
      value_format:
      value_format_name: usd_0
      _kind_hint: dimension
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    value_labels: legend
    label_type: labPer
    series_types: {}
    single_value_title: TOTAL - Actual
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 4
    col: 18
    width: 6
    height: 4

  - title: New - Closed/Won Opportunities QTD
    name: New - Closed/Won Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 06 - Closed Won
      sf_opportunities.type: New
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#5eb297"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 8
    col: 0
    width: 12
    height: 7

  - title: Upgrade/Upsell - Closed/Won Opportunities QTD
    name: Upgrade/Upsell - Closed/Won Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 06 - Closed Won
      sf_opportunities.type: Upgrade / Upsell
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#5eb297"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 22
    col: 0
    width: 12
    height: 7

  - title: Renewal - Closed/Won Opportunities QTD
    name: Renewal - Closed/Won Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 06 - Closed Won
      sf_opportunities.type: Renewal
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#5eb297"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 36
    col: 0
    width: 12
    height: 13

  - title: Current FQ - Renewal and Upsell - Closed
    name: Current FQ - Renewal and Upsell - Closed
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - sf_opportunities.sum_of_bookings_value
    - sf_accounts.name
    - opportunity_owners.name
    filters:
      sf_opportunities.type: Renewal,Upgrade / Upsell
      sf_opportunities.stage_name: 06 - Closed Won
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#5eb297"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 56
    col: 0
    width: 24
    height: 12

  - title: New - Commit Opportunities QTD
    name: New - Commit Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 05 - Commit
      sf_opportunities.type: New
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#9ae3cc"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 8
    col: 12
    width: 12
    height: 7

  - title: Upgrade/Upsell - Commit Opportunities QTD
    name: Upgrade/Upsell - Commit Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 05 - Commit
      sf_opportunities.type: Upgrade / Upsell
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#9ae3cc"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 22
    col: 12
    width: 12
    height: 7

  - title: Renewal - Commit Opportunities QTD
    name: Renewal - Commit Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 05 - Commit
      sf_opportunities.type: Renewal
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#9ae3cc"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 36
    col: 12
    width: 12
    height: 13

  - title: New - Forecast Opportunities QTD
    name: New - Forecast Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 04 - Forecast
      sf_opportunities.type: New
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#4281c3"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 15
    col: 0
    width: 12
    height: 7

  - title: Upgrade/Upsell - Forecast Opportunities QTD
    name: Upgrade/Upsell - Forecast Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 04 - Forecast
      sf_opportunities.type: Upgrade / Upsell
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#4281c3"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 29
    col: 0
    width: 12
    height: 7

  - title: Renewal - Forecast Opportunities QTD
    name: Renewal - Forecast Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 04 - Forecast
      sf_opportunities.type: Renewal
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#4281c3"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 49
    col: 0
    width: 12
    height: 7

  - title: New - Upside Opportunities QTD
    name: New - Upside Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 03 - Upside
      sf_opportunities.type: New
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#70b3fc"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 15
    col: 12
    width: 12
    height: 7

  - title: Upgrade/Upsell - Upside Opportunities QTD
    name: Upgrade/Upsell - Upside Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 03 - Upside
      sf_opportunities.type: Upgrade / Upsell
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#70b3fc"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 29
    col: 12
    width: 12
    height: 7

  - title: Renewal - Upside Opportunities QTD
    name: Renewal - Upside Opportunities QTD
    model: salesforce
    explore: sf_opportunities
    type: looker_bar
    fields:
    - opportunity_owners.name
    - sf_accounts.name
    - sf_opportunities.sum_of_bookings_value
    filters:
      sf_opportunities.stage_name: 03 - Upside
      sf_opportunities.type: Renewal
      sf_opportunities.close_date: 1 quarters
    sorts:
    - opportunity_owners.name
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
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields:
    colors:
    - 'palette: Default'
    series_colors:
      sf_opportunities.sum_of_bookings_value: "#70b3fc"
    listen:
      Opportunity Owner: opportunity_owners.name
    row: 49
    col: 12
    width: 12
    height: 7

  filters:

  - name: Opportunity Owner
    title: Opportunity Owner
    type: field_filter
    default_value: ''
    model: salesforce
    explore: sf_opportunities
    field: opportunity_owners.name
    listens_to_filters: []
    allow_multiple_values: true
    required: false