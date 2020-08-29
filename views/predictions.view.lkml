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
    type: string
    sql: ${TABLE}.IndiceIBEX35 ;;
  }

  dimension: predicted_imvperceptores {
    hidden: yes
    sql: ${TABLE}.predicted_IMVPerceptores ;;
  }

  dimension: tasa_empleo_agricultura {
    type: string
    sql: ${TABLE}.TasaEmpleoAgricultura ;;
  }

  dimension: tasa_empleo_financiero {
    type: string
    sql: ${TABLE}.TasaEmpleoFinanciero ;;
  }

  dimension: tasa_empleo_industria {
    type: string
    sql: ${TABLE}.TasaEmpleoIndustria ;;
  }

  dimension: tasa_empleo_turismo {
    type: string
    sql: ${TABLE}.TasaEmpleoTurismo ;;
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
