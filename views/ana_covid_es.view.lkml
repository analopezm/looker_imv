view: ana_covid_es {
  sql_table_name: `notebook-demo-283410.ingresominimovital.ana_covid_es`
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: grocery_and_pharmacy_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.grocery_and_pharmacy_percent_change_from_baseline ;;
  }

  dimension: parks_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.parks_percent_change_from_baseline ;;
  }


  dimension: residential_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.residential_percent_change_from_baseline ;;
  }

  dimension: retail_and_recreation_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.retail_and_recreation_percent_change_from_baseline ;;
  }

  dimension: sub_region_1 {
    type: string
    sql: ${TABLE}.sub_region_1 ;;
  }

  dimension: sub_region_2 {
    type: string
    sql: ${TABLE}.sub_region_2 ;;
  }

  dimension: iso_3166_2_code {
    type: string
    sql: ${TABLE}.iso_3166_2_code ;;
  }

  dimension: transit_stations_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.transit_stations_percent_change_from_baseline ;;
  }

  dimension: workplaces_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.workplaces_percent_change_from_baseline ;;
  }

  measure: average_grocery_and_pharmacy_percent_change_from_baseline {
    type: average
    sql: ${grocery_and_pharmacy_percent_change_from_baseline} ;;
    value_format_name: decimal_0
  }

  measure: average_parks_percent_change_from_baseline {
    type: average
    sql: ${parks_percent_change_from_baseline} ;;
    value_format_name: decimal_0
  }

  measure: average_residential_percent_change_from_baseline {
    type: average
    sql: ${residential_percent_change_from_baseline} ;;
    value_format_name: decimal_0
  }

  measure: average_retail_and_recreation_percent_change_from_baseline {
    type: average
    sql: ${retail_and_recreation_percent_change_from_baseline} ;;
    value_format_name: decimal_0
  }

  measure: average_transit_stations_percent_change_from_baseline {
    type: average
    sql: ${transit_stations_percent_change_from_baseline} ;;
    value_format_name: decimal_0
  }

  measure: average_workplaces_percent_change_from_baseline {
    type: average
    sql: ${workplaces_percent_change_from_baseline} ;;
    value_format_name: decimal_0
  }



  measure: count {
    type: count
    drill_fields: [ ]
  }
}
