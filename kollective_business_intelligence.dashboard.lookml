- dashboard: kollective_business_intelligence
  title: Kollective Business Intelligence
  layout: newspaper

  filters:

  elements:

    - name: executive_overview_dashboard
      type: text
      title_text: <p> <a href="https://ec2-35-162-161-116.us-west-2.compute.amazonaws.com:9999/dashboards/salesforce::executive_overview">Executive Overview</a></p>
      row: 0
      col: 0
      height: 6
      width: 4

    - title: Pipeline Forecast
      name: Pipeline Forecast
      model: salesforce
      explore: sf__opportunities
      type: looker_column
      fields:
      - sf__opportunities.close_month
      - sf__opportunities.total_revenue
      - sf__opportunities.stage_name
      pivots:
      - sf__opportunities.stage_name
      fill_fields:
      - sf__opportunities.close_month
      filters:
        sf__opportunities.close_month: 9 months ago for 12 months
        sf__opportunities.stage_name: 02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
          - Closed Won,07 - Closed Lost
      sorts:
      - sf__opportunities.close_month
      - sf__opportunities.stage_name
      query_timezone: America/Los_Angeles
      stacking: normal
      hidden_series: []
      colors:
      - 'palette: Default'
      show_value_labels: false
      label_density: 21
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: false
      show_view_names: false
      series_labels:
        '0': Lost
        100 or Above: Won
        02 - Pipeline - sf__opportunities.total_revenue: Pipeline
        03 - Upside - sf__opportunities.total_revenue: Upside
        04 - Forecast - sf__opportunities.total_revenue: Forecast
        05 - Commit - sf__opportunities.total_revenue: Commit
        06 - Closed Won - sf__opportunities.total_revenue: Closed Won
        07 - Closed Lost - sf__opportunities.total_revenue: Closed Lost
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_labels:
      - Amount in Pipeline
      y_axis_tick_density: default
      show_x_axis_label: true
      x_axis_label: Opportunities Close Month
      show_x_axis_ticks: true
      x_axis_datetime_label: "%b %y"
      x_axis_scale: ordinal
      ordering: none
      show_null_labels: false
      series_colors:
        06 - Closed Won - sf__opportunities.total_revenue: "#5eb297"
        05 - Commit - sf__opportunities.total_revenue: "#9ae3cc"
        07 - Closed Lost - sf__opportunities.total_revenue: "#d75c44"
        04 - Forecast - sf__opportunities.total_revenue: "#70b3fc"
        03 - Upside - sf__opportunities.total_revenue: "#4281c3"
        02 - Pipeline - sf__opportunities.total_revenue: "#435978"
      limit_displayed_rows: false
      y_axis_tick_density_custom: 5
      y_axis_scale_mode: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      row: 0
      col: 4
      width: 10
      height: 6

    - title: YTD Lead to Win Funnel
      name: This Year Lead to Win Funnel
      model: salesforce
      explore: sf__leads
      type: looker_column
      fields:
      - sf__leads.count
      - sf__leads.net_mql_count
      - sf__leads.converted_to_opportunity_count
      - sf__opportunities.count_sql
      - sf__opportunities.count_won
      filters:
        sf__leads.created_date: this year
      sorts:
      - sf__leads.count desc
      limit: 500
      stacking: ''
      colors:
      - 'palette: Default'
      show_value_labels: true
      label_density: 10
      label_color: []
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      series_labels:
        sf__leads.count: Leads
        sf__opportunities.count_new_business: Opportunities
        sf__opportunities.count_new_business_won: Won Opportunities
        sf__leads.net_mql_count: MQLs
        sf__leads.converted_to_opportunity_count: Opportunities
        sf__opportunities.count_sql: SQLs
        sf__opportunities.count_won: Won Opportunities
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
        sf__opportunities.count_won: "#5eb297"
        sf__opportunities.count_sql: "#9ae3cc"
        sf__leads.count: "#435978"
        sf__leads.net_mql_count: "#4281c3"
        sf__leads.converted_to_opportunity_count: "#70b3fc"
      limit_displayed_rows: false
      y_axis_tick_density_custom: 5
      y_axis_scale_mode: linear
      ordering: none
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      row: 0
      col: 14
      width: 10
      height: 6

    - name: divider_1
      type: text
      title_text: <font color="#F7F7F7">Kollective Business Intelligence</font>
      row: 6
      col: 0
      height: 2
      width: 24

    - name: sales_overview_dashboard
      type: text
      title_text: <p><a href="https://ec2-35-162-161-116.us-west-2.compute.amazonaws.com:9999/dashboards/salesforce::sales_overview?Opportunity%20Owner=&filter_config=%7B%22Opportunity%20Owner%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:2%7D%5D%7D">Sales Overview</a></p>
      subtitle_text: Quarter to Date
      row: 8
      col: 0
      height: 6
      width: 4

    - title: Current FQ - New Forecast
      name: Current FQ - New Forecast
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won,04 - Forecast,05 - Commit
        sf__opportunities.type: New
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
      row: 8
      col: 4
      width: 5
      height: 3

    - title: Current FQ - Upgrade/Upsell Forecast
      name: Current FQ - Upgrade/Upsell Forecast
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won,05 - Commit,04 - Forecast
        sf__opportunities.type: Upgrade / Upsell
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
      row: 8
      col: 9
      width: 5
      height: 3

    - title: Current FQ - Renewal Forecast
      name: Current FQ - Renewal Forecast
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won,05 - Commit,04 - Forecast
        sf__opportunities.type: Renewal
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
      row: 8
      col: 14
      width: 5
      height: 3

    - title: Current FQ - Total Forecast
      name: Current FQ - Total Forecast
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won,05 - Commit,04 - Forecast
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
      row: 8
      col: 19
      width: 5
      height: 3

    - title: Current FQ - New Forecast - Closed/Won
      name: Current FQ - New Forecast - Closed/Won
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won
        sf__opportunities.type: New
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
      row: 11
      col: 4
      width: 5
      height: 3

    - title: Current FQ - Upgrade/Upsell Forecast - Closed/Won
      name: Current FQ - Upgrade/Upsell Forecast - Closed/Won
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won
        sf__opportunities.type: Upgrade / Upsell
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
      row: 11
      col: 9
      width: 5
      height: 3

    - title: Current FQ - Renewal Forecast - Closed/Won
      name: Current FQ - Renewal Forecast - Closed/Won
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won
        sf__opportunities.type: Renewal
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
      row: 11
      col: 14
      width: 5
      height: 3

    - title: Current FQ - Total Forecast - Closed/Won
      name: Current FQ - Total Forecast - Closed/Won
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.sum_of_bookings_value
      filters:
        sf__opportunities.close_date: this quarter
        sf__opportunities.stage_name: 06 - Closed Won
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
      row: 11
      col: 19
      width: 5
      height: 3

    - name: divider_2
      type: text
      title_text: <font color="#F7F7F7">Kollective Business Intelligence</font>
      row: 14
      col: 0
      height: 2
      width: 24


    - name: marketing_overview_dashboard
      type: text
      title_text: <p><a href="https://ec2-35-162-161-116.us-west-2.compute.amazonaws.com:9999/dashboards/salesforce::marketing_overview">Marketing Overview</a></p>
      row: 16
      col: 0
      height: 6
      width: 4

    - title: Leads by Acquisition Program QTD
      name: Leads by Acquisition Program
      model: salesforce
      explore: sf__leads
      type: looker_column
      fields:
      - sf__leads.count
      - sf__leads.acquisition_program
      - sf__leads.net_mql_count
      sorts:
      - sf__leads.count desc
      filters:
        sf__leads.created_date: this quarter
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
        sf__leads.count: "#4281c3"
        sf__leads.net_mql_count: "#70b3fc"
        sf__opportunities.count: "#9ae3cc"
        sf__opportunities.count_won: "#5eb297"
      series_labels:
        sf__leads.net_mql_count: MQLs
        sf__leads.count: Leads
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
        - id: sf__leads.count
          name: Leads
          axisId: sf__leads.count
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
        - id: sf__leads.net_mql_count
          name: MQLs
          axisId: sf__leads.net_mql_count
      row: 16
      col: 4
      width: 10
      height: 6

    - title: Opportunities by Channel Partner QTD
      name: Opportunities by Channel Partner
      model: salesforce
      explore: sf__opportunities
      type: looker_column
      fields:
      - sf__opportunities.channel_partner
      - sf__opportunities.count
      - sf__opportunities.count_won
      sorts:
      - sf__opportunities.count desc
      filters:
        sf__opportunities.created_date: this quarter
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
        sf__opportunities.count: "#4281c3"
        sf__opportunities.count_won: "#5eb297"
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
        - id: sf__opportunities.count
          name: Sf Opportunities
          axisId: sf__opportunities.count
        - id: sf__opportunities.count_won
          name: Count Won
          axisId: sf__opportunities.count_won
      row: 16
      col: 14
      width: 10
      height: 6

    - name: divider_3
      type: text
      title_text: <font color="#F7F7F7">Kollective Business Intelligence</font>
      row: 22
      col: 0
      height: 2
      width: 24


    - name: csm_overview_dashboard
      type: text
      title_text: <p><a href="https://ec2-35-162-161-116.us-west-2.compute.amazonaws.com:9999/dashboards/salesforce::csm_overview?CSM=&filter_config=%7B%22CSM%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:2%7D%5D%7D">CSM Overview</a></p>
      row: 24
      col: 0
      height: 6
      width: 4

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
      row: 24
      col: 4
      width: 5
      height: 3

    - title: Won Renewals YTD
      name: won_renewals
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.count_won
      filters:
        sf__opportunities.type: Renewal
        sf__opportunities.close_date: this year
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
      single_value_title: Renewal's Won YTD
      row: 27
      col: 4
      width: 5
      height: 3

    - title: Renewal Pipeline
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
        sf__opportunities.close_date: 9 months ago for 12 months
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
        07 - Closed Lost: "#d75c44"
      row: 24
      col: 14
      width: 10
      height: 6

    - title: Average Deal Size YTD
      name: average_deal_size
      model: salesforce
      explore: sf__opportunities
      type: single_value
      fields:
      - sf__opportunities.average_deal_size
      filters:
        sf__opportunities.stage_name: 06 - Closed Won
        sf__opportunities.type: Renewal
        sf__opportunities.close_date: this year
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
      single_value_title: Average Won Deal Size YTD
      row: 24
      col: 9
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
        sf__opportunities.close_date: this year
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
      single_value_title: Renewal Win Percentage YTD
      row: 27
      col: 9
      width: 5
      height: 3

    - name: divider_4
      type: text
      title_text: <font color="#F7F7F7">Kollective Business Intelligence</font>
      row: 30
      col: 0
      height: 2
      width: 24


    - name: current_customer_table
      title: Current Customers
      model: company_usage
      explore: usage__map
      type: table
      fields: [sf__accounts.name, sf__accounts.annual_recurring_revenue, sf__accounts.renewal_date,
        usage__node.count]
      filters:
        sf__accounts.type: Customer
      sorts: [sf__accounts.name]
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
      series_types: {}
      row: 32
      col: 0
      width: 24
      height: 12
