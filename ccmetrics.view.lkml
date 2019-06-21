view: ccmetrics {
  sql_table_name: dbuser.ccmetrics ;;

  dimension: executiontimeseconds {
    type: number
    sql: ${TABLE}.executiontimeseconds ;;
  }

  dimension: queryloopuser {
    type: string
    sql: ${TABLE}.queryloopuser ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: queries_served {
    type: count
  }

  measure: average_execution_seconds {
    type: average
    sql: ${executiontimeseconds} ;;
  }

}
