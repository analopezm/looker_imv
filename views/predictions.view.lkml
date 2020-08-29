view: predictions {
  sql_table_name: `notebook-demo-283410.prediction_imv4_automl_model_2020_08_29T10_35_31_989Z.predictions`
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
    type:  number
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
    value_format_name: decimal_1
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

  measure: count {
    type: count
    drill_fields: []
  }
}

view: predictions__predicted_imvperceptores__tables__prediction_interval {
  dimension: end {
    type: number
    sql: ${TABLE}.`end` ;;
  }

  dimension: start {
    type: number
    sql: ${TABLE}.start ;;
  }
}

view: predictions__predicted_imvperceptores__tables {
  dimension: prediction_interval {
    hidden: yes
    sql: ${TABLE}.prediction_interval ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
}

view: predictions__predicted_imvperceptores {
  dimension: tables {
    hidden: yes
    sql: ${TABLE}.tables ;;
  }
}
