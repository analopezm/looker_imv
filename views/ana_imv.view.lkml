view: ana_imv {
  sql_table_name: `ingresominimovital.ana_imv`
    ;;

  dimension: comunidad {
    type: string
    sql: ${TABLE}.Comunidad ;;
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

  measure: count_habitantes {
    type: count
    drill_fields: [habitantes]
  }
  measure: count_perceptores_totales {
    type: count
    drill_fields: [perceptores_totales_]
  }
  measure: count_porcentaje_afectados_erte {
    type: count
    drill_fields: [porcentaje_afectados_erte]
  }
  measure: count_solicitudes {
    type: count
    drill_fields: [solicitudes]
  }
  measure: count_tasa_riesgo_pobreza {
    type: count
    drill_fields: [tasa_riesgo_pobreza]
  }
}
