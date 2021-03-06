- dashboard: kollective_business_intelligence
  title: Kollective Business Intelligence
  layout: newspaper

  filters:

  elements:

    - name: executive_overview_dashboard
      type: text
      title_text: <p> <a href="https://looker.data.kollective.com/dashboards/salesforce::executive_overview">Executive Overview</a></p>
      row: 0
      col: 0
      height: 6
      width: 4

    - title: Current Customers
      name: Current Customers
      model: salesforce
      explore: sf_accounts
      type: single_value
      fields:
      - sf_accounts.name
      - owner.name
      - sf_accounts.seats_licensed
      - sf_accounts.annual_recurring_revenue
      - sf_accounts.renewal_date
      filters:
        sf_accounts.type: Customer
      sorts:
      - sf_accounts.name
      limit: 1000
      column_limit: 50
      dynamic_fields:
      - table_calculation: count
        label: Count
        expression: count(${sf_accounts.name})
        value_format:
        value_format_name: decimal_0
        _kind_hint: dimension
        _type_hint: number
      font_size: medium
      text_color: "#49719a"
      hidden_fields:
      - sf_accounts.name
      - sf_accounts.seats_licensed
      - sf_accounts.renewal_date
      - sf_accounts.annual_recurring_revenue
      - owner.name
      single_value_title: Current Customers
      row: 0
      col: 4
      width: 5
      height: 2

    - title: Total ARR
      name: Total ARR
      model: salesforce
      explore: sf_accounts
      type: single_value
      fields:
      - sf_accounts.name
      - sf_accounts.annual_recurring_revenue
      filters:
        sf_accounts.type: Customer
      sorts:
      - sf_accounts.name
      limit: 500
      dynamic_fields:
      - table_calculation: arr_sum
        label: ARR Sum
        expression: sum(${sf_accounts.annual_recurring_revenue})
        value_format:
        value_format_name: usd_0
        _kind_hint: dimension
        _type_hint: number
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
      hidden_fields:
      - sf_accounts.name
      - sf_accounts.annual_recurring_revenue
      row: 3
      col: 4
      width: 5
      height: 2

    - title: Average ACV
      name: Average ACV
      model: salesforce
      explore: sf_accounts
      type: single_value
      fields:
      - sf_accounts.name
      - sf_accounts.annual_recurring_revenue
      filters:
        sf_accounts.type: Customer
      sorts:
      - sf_accounts.name
      limit: 500
      dynamic_fields:
      - table_calculation: average_acv
        label: Average ACV
        expression: sum(${sf_accounts.annual_recurring_revenue})/count(${sf_accounts.annual_recurring_revenue})
        value_format:
        value_format_name: usd_0
        _kind_hint: dimension
        _type_hint: number
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
      hidden_fields:
      - sf_accounts.name
      - sf_accounts.annual_recurring_revenue
      row: 5
      col: 4
      width: 5
      height: 2

    - title: New Pipeline Forecast
      name: New Pipeline Forecast
      model: salesforce
      explore: sf_opportunities
      type: looker_column
      fields:
      - sf_opportunities.close_fiscal_quarter
      - sf_opportunities.sum_of_bookings_value
      - sf_opportunities.stage_name
      pivots:
      - sf_opportunities.stage_name
      fill_fields:
      - sf_opportunities.close_fiscal_quarter
      filters:
        sf_opportunities.stage_name: 01 - Prospect,02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
          - Closed Won,07 - Closed Lost
        sf_opportunities.close_quarter: 1 quarter ago for 6 quarters
        sf_opportunities.type: New
        sf_opportunities.close_fiscal_quarter: 1 quarter ago for 6 quarters
      sorts:
      - sf_opportunities.stage_name 0
      - sf_opportunities.close_fiscal_quarter
      query_timezone: America/Los_Angeles
      stacking: normal
      hidden_series: [01 - Prospect]
      colors:
      - 'palette: Default'
      show_value_labels: false
      label_density: 21
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      series_labels:
        01 - Prospect - sf_opportunities.sum_of_bookings_value: Prospect
        02 - Pipeline - sf_opportunities.sum_of_bookings_value: Pipeline
        03 - Upside - sf_opportunities.sum_of_bookings_value: Upside
        04 - Forecast - sf_opportunities.sum_of_bookings_value: Forecast
        05 - Commit - sf_opportunities.sum_of_bookings_value: Commit
        06 - Closed Won - sf_opportunities.sum_of_bookings_value: Won
        07 - Closed Lost - sf_opportunities.sum_of_bookings_value: Lost
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_labels:
      - Amount in Pipeline
      y_axis_tick_density: default
      show_x_axis_label: true
      x_axis_label: Close Quarter
      show_x_axis_ticks: true
      x_axis_scale: ordinal
      ordering: none
      show_null_labels: false
      series_colors:
        01 - Prospect - sf_opportunities.sum_of_bookings_value: "#202c3a"
        02 - Pipeline - sf_opportunities.sum_of_bookings_value: "#435978"
        03 - Upside - sf_opportunities.sum_of_bookings_value: "#4281c3"
        04 - Forecast - sf_opportunities.sum_of_bookings_value: "#559be6"
        05 - Commit - sf_opportunities.sum_of_bookings_value: "#9ae3cc"
        06 - Closed Won - sf_opportunities.sum_of_bookings_value: "#5eb297"
        07 - Closed Lost - sf_opportunities.sum_of_bookings_value: "#d75c44"
      limit_displayed_rows: false
      y_axis_tick_density_custom: 5
      y_axis_scale_mode: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      y_axes:
      - label: Total Bookings Value
        orientation: left
        series:
        - id: 02 - Pipeline
          name: Pipeline
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 03 - Upside
          name: Upside
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 04 - Forecast
          name: Forecast
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 05 - Commit
          name: Commit
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 06 - Closed Won
          name: Won
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 07 - Closed Lost
          name: Lost
          axisId: sf_opportunities.sum_of_bookings_value
        showLabels: true
        showValues: true
        unpinAxis: false
        tickDensity: default
        tickDensityCustom: 5
        type: linear
      x_axis_reversed: false
      y_axis_reversed: false
      note_state: collapsed
      note_display: above
      note_text: ''
      row: 0
      col: 9
      width: 15
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
      title_text: <p><a href="https://looker.data.kollective.com/dashboards/salesforce::sales_overview?Opportunity%20Owner=&filter_config=%7B%22Opportunity%20Owner%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:2%7D%5D%7D">Sales Overview</a></p>
      subtitle_text: Quarter to Date
      row: 8
      col: 0
      height: 6
      width: 4

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
      row: 8
      col: 4
      width: 5
      height: 3

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
      row: 8
      col: 9
      width: 5
      height: 3

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
      row: 8
      col: 14
      width: 5
      height: 3

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
      row: 8
      col: 19
      width: 5
      height: 3

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
      row: 11
      col: 4
      width: 5
      height: 3

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
      row: 11
      col: 9
      width: 5
      height: 3

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
      row: 11
      col: 14
      width: 5
      height: 3

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
      title_text: <p><a href="https://looker.data.kollective.com/dashboards/salesforce::marketing_overview">Marketing Overview</a></p>
      row: 16
      col: 0
      height: 6
      width: 4


    - title: Leads to Opportunties
      name: Leads to Opportunties
      model: salesforce
      explore: sf_leads
      type: looker_column
      fields:
      - sf_leads.count
      - sf_leads.currently_active_leads_count
      - sf_leads.net_mql_count
      - sf_leads.converted_to_opportunity_count
      - sf_leads.created_fiscal_quarter
      fill_fields:
      - sf_leads.created_fiscal_quarter
      filters:
        sf_leads.created_date: 4 quarters
      sorts:
      - sf_leads.created_fiscal_quarter
      limit: 500
      stacking: ''
      show_value_labels: true
      label_density: 3
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
      show_null_points: true
      point_style: none
      interpolation: linear
      colors:
      - 'palette: Default'
      label_color: []
      series_labels:
        sf_leads.count: Leads
        sf_opportunities.count_new_business: Opportunities
        sf_opportunities.count_new_business_won: Won Opportunities
        sf_leads.net_mql_count: MQLs
        sf_leads.converted_to_opportunity_count: Opportunities
        sf_opportunities.count_sql: SQLs
        sf_opportunities.count_won: Won Opportunities
        sf_leads.currently_active_leads_count: Active Leads
      show_dropoff: false
      series_colors:
        sf_opportunities.count_won: "#5eb297"
        sf_opportunities.count_sql: "#9ae3cc"
        sf_leads.count: "#435978"
        sf_leads.net_mql_count: "#70b3fc"
        sf_leads.converted_to_opportunity_count: "#9ae3cc"
        sf_leads.currently_active_leads_count: "#4281c3"
      series_types: {}
      hidden_series: []
      row: 16
      col: 4
      width: 10
      height: 6

    - title: Leads by Source QTD
      name: Leads by Source QTD
      model: salesforce
      explore: sf_leads
      type: looker_column
      fields:
      - sf_leads.count
      - sf_leads.lead_source
      filters:
        sf_leads.created_fiscal_quarter: this fiscal quarter
      sorts:
      - sf_leads.count desc
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
        sf_leads.count: Leads
        sf_opportunities.count_new_business: Opportunities
        sf_opportunities.count_new_business_won: Won Opportunities
        sf_leads.net_mql_count: MQLs
        sf_leads.converted_to_opportunity_count: Opportunities
        sf_opportunities.count_sql: SQLs
        sf_opportunities.count_won: Won Opportunities
      y_axis_combined: true
      show_y_axis_labels: false
      show_y_axis_ticks: true
      y_axis_tick_density: default
      show_x_axis_label: true
      show_x_axis_ticks: true
      x_axis_scale: auto
      show_null_labels: false
      show_dropoff: false
      series_colors:
        sf_opportunities.count_won: "#5eb297"
        sf_opportunities.count_sql: "#9ae3cc"
        sf_leads.count: "#559be6"
        sf_leads.net_mql_count: "#4281c3"
        sf_leads.converted_to_opportunity_count: "#70b3fc"
      limit_displayed_rows: false
      y_axis_tick_density_custom: 5
      y_axis_scale_mode: linear
      ordering: none
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
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


    - name: cs_overview_dashboard
      type: text
      title_text: <p><a href="https://looker.data.kollective.com/dashboards/salesforce::cs_overview?CS=&filter_config=%7B%22CSM%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:2%7D%5D%7D">CS Overview</a></p>
      row: 24
      col: 0
      height: 6
      width: 4

    - title: Open Renewals
      name: open_renewals
      model: salesforce
      explore: sf_opportunities
      type: single_value
      fields:
      - sf_opportunities.count_open
      filters:
        sf_opportunities.type: Renewal
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

    - title: Won Renewals QTD
      name: won_renewals
      model: salesforce
      explore: sf_opportunities
      type: single_value
      fields:
      - sf_opportunities.count
      filters:
        sf_opportunities.type: Renewal
        sf_opportunities.close_fiscal_quarter: this fiscal quarter
        sf_opportunities.is_won: yes
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
      single_value_title: Renewal's Won QTD
      row: 27
      col: 4
      width: 5
      height: 3

    - title: Average Deal Size YTD
      name: average_deal_size
      model: salesforce
      explore: sf_opportunities
      type: single_value
      fields:
      - sf_opportunities.average_deal_size
      filters:
        sf_opportunities.stage_name: 06 - Closed Won
        sf_opportunities.type: Renewal
        sf_opportunities.close_date: this year
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
      explore: sf_opportunities
      type: single_value
      fields:
      - sf_opportunities.win_percentage
      filters:
        sf_opportunities.type: Renewal
        sf_opportunities.close_date: this year
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

    - title: Renewal Forecast
      name: Renewal Forecast
      model: salesforce
      explore: sf_opportunities
      type: looker_column
      fields:
      - sf_opportunities.stage_name
      - sf_opportunities.sum_of_bookings_value
      - sf_opportunities.close_fiscal_quarter
      pivots:
      - sf_opportunities.stage_name
      fill_fields:
      - sf_opportunities.close_fiscal_quarter
      filters:
        sf_opportunities.close_fiscal_quarter: 1 quarter ago for 6 quarters
        sf_opportunities.stage_name: 01 - Prospect,02 - Pipeline,03 - Upside,04 - Forecast,05 - Commit,06
          - Closed Won,07 - Closed Lost
        sf_opportunities.type: Renewal
      sorts:
      - sf_opportunities.stage_name 0
      - sf_opportunities.close_fiscal_quarter
      query_timezone: America/Los_Angeles
      stacking: normal
      hidden_series: [01 - Prospect]
      colors:
      - 'palette: Default'
      show_value_labels: false
      label_density: 21
      legend_position: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: false
      series_labels:
        01 - Prospect - sf_opportunities.sum_of_bookings_value: Prospect
        02 - Pipeline - sf_opportunities.sum_of_bookings_value: Pipeline
        03 - Upside - sf_opportunities.sum_of_bookings_value: Upside
        04 - Forecast - sf_opportunities.sum_of_bookings_value: Forecast
        05 - Commit - sf_opportunities.sum_of_bookings_value: Commit
        06 - Closed Won - sf_opportunities.sum_of_bookings_value: Won
        07 - Closed Lost - sf_opportunities.sum_of_bookings_value: Lost
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_labels:
      - Amount in Pipeline
      y_axis_tick_density: default
      show_x_axis_label: true
      x_axis_label: Close Quarter
      show_x_axis_ticks: true
      x_axis_scale: ordinal
      ordering: none
      show_null_labels: false
      series_colors:
        01 - Pipeline - sf_opportunities.sum_of_bookings_value: "#202c3a"
        02 - Pipeline - sf_opportunities.sum_of_bookings_value: "#435978"
        03 - Upside - sf_opportunities.sum_of_bookings_value: "#4281c3"
        04 - Forecast - sf_opportunities.sum_of_bookings_value: "#559be6"
        05 - Commit - sf_opportunities.sum_of_bookings_value: "#9ae3cc"
        06 - Closed Won - sf_opportunities.sum_of_bookings_value: "#5eb297"
        07 - Closed Lost - sf_opportunities.sum_of_bookings_value: "#d75c44"
      limit_displayed_rows: false
      y_axis_tick_density_custom: 5
      y_axis_scale_mode: linear
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      y_axes:
      - label: Total Bookings Value
        orientation: left
        series:
        - id: 01 - Prospect
          name: Prospect
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 02 - Pipeline
          name: Pipeline
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 03 - Upside
          name: Upside
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 04 - Forecast
          name: Forecast
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 05 - Commit
          name: Commit
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 06 - Closed Won
          name: Won
          axisId: sf_opportunities.sum_of_bookings_value
        - id: 07 - Closed Lost
          name: Lost
          axisId: sf_opportunities.sum_of_bookings_value
        showLabels: true
        showValues: true
        unpinAxis: false
        tickDensity: default
        tickDensityCustom: 5
        type: linear
      x_axis_reversed: false
      y_axis_reversed: false
      note_state: collapsed
      note_display: above
      note_text: ''
      row: 24
      col: 14
      width: 10
      height: 6