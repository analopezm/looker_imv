view: ana_imv_predictions {
  sql_table_name: `notebook-demo-283410.ingresominimovital.ana_imv_predictions`
    ;;

  dimension: comunidad {
    type: string
    sql: ${TABLE}.Comunidad ;;
  }

  dimension: covidtasa_contagio {
    type: number
    sql: ${TABLE}.COVIDTasaContagio ;;
  }

  dimension: indice_ibex35 {
    type: number
    sql: ${TABLE}.IndiceIBEX35 ;;
  }

  dimension: predicted_imvperceptores {
    type: number
    sql: ${TABLE}.predicted_IMVPerceptores ;;
  }

  dimension: tasa_empleo_agricultura {
    type: number
    sql: ${TABLE}.TasaEmpleoAgricultura ;;
  }

  dimension: tasa_empleo_financiero {
    type: number
    sql: ${TABLE}.TasaEmpleoFinanciero ;;
  }

  dimension: tasa_empleo_industria {
    type: number
    sql: ${TABLE}.TasaEmpleoIndustria ;;
  }

  dimension: tasa_empleo_turismo {
    type: number
    sql: ${TABLE}.TasaEmpleoTurismo ;;
  }

  measure: average_covidtasa_contagio {
    type: average
    sql: ${covidtasa_contagio} ;;
    value_format_name: decimal_0
  }

  measure: average_indice_ibex35 {
    type: average
    sql: ${indice_ibex35} ;;
    value_format_name: decimal_0
  }

  measure: average_predicted_imvperceptores {
    type: average
    sql: ${predicted_imvperceptores} ;;
    value_format_name: decimal_0
  }

  measure: average_tasa_empleo_agricultura {
    type: average
    sql: ${tasa_empleo_agricultura} ;;
    value_format_name: decimal_0
  }

  measure: average_tasa_empleo_financiero {
    type: average
    sql: ${tasa_empleo_financiero} ;;
    value_format_name: decimal_0
  }

  measure: average_tasa_empleo_turismo {
    type: average
    sql: ${tasa_empleo_turismo} ;;
    value_format_name: decimal_0
  }

  measure: average_tasa_empleo_industria {
    type: average
    sql: ${tasa_empleo_industria} ;;
    value_format_name: decimal_0
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
