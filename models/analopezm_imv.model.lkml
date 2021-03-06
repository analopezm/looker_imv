connection: "analopezm_imv"

# include all the views
include: "/views/**/*.view"

datagroup: analopezm_imv_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: analopezm_imv_default_datagroup

explore: ana_imv {}
explore: ana_imv_predictions {}
explore: estimacion_covid {}
explore: ana_covid_es {}

# explore: tabla_ingresominimovital {}
