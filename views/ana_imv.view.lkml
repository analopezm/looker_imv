view: ana_imv {
  sql_table_name: `ingresominimovital.ana_imv`
    ;;

  dimension: comunidad {
    type: string
    sql: ${TABLE}.Comunidad ;;
  }

  dimension: comunidad_latitud {
    type:  number
    sql:  ${TABLE}.Comunidad_Latitud ;;
  }

  dimension: comunidad_longitud {
    type:  number
    sql:  ${TABLE}.Comunidad_Longitud ;;
  }

  dimension: comunidad_localizacion {
    type: location
    sql_latitude: ${comunidad_latitud} ;;
    sql_longitude: ${comunidad_longitud} ;;
  }

  dimension: habitantes {
    type: number
    sql: ${TABLE}.Habitantes ;;
  }

  dimension: perceptores_totales_ {
    type: number
    sql: ${TABLE}.Perceptores_totales_ ;;
  }

  dimension: periodo {
    type: number
    sql: ${TABLE}.Periodo ;;
  }

  dimension: porcentaje_afectados_erte {
    type: number
    sql: ${TABLE}.Porcentaje_afectados_ERTE ;;
  }

  dimension: solicitudes {
    type: number
    sql: ${TABLE}.Solicitudes ;;
  }

  dimension: tasa_riesgo_pobreza {
    type: number
    sql: ${TABLE}.Tasa_Riesgo_Pobreza ;;
  }

  measure: average_habitantes {
    type: average
    sql: ${habitantes} ;;
    value_format_name: decimal_0
  }
  measure: average_perceptores_totales {
    type: average
    sql:  ${perceptores_totales_} ;;
    value_format_name: decimal_0
  }
  measure: average_porcentaje_afectados_erte {
    type: average
    sql:   ${porcentaje_afectados_erte};;
    value_format_name: decimal_1
  }
  measure: average_solicitudes {
    type: average
    sql:  ${solicitudes};;
    value_format_name: decimal_0
  }
  measure: average_tasa_riesgo_pobreza {
    type: average
    sql:  ${tasa_riesgo_pobreza} ;;
    value_format_name: decimal_1
  }
}
