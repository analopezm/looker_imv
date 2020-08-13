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

  measure: count {
    type: count
    drill_fields: []
  }
}
