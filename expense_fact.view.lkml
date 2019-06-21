view: expense_fact {
  sql_table_name: dbuser.expense_fact ;;

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: category_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.category_id ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.currency_id ;;
  }

  dimension_group: expense {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.expense_date ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  measure: count {
    type: count
    drill_fields: [account.account_id, store.store_id, store.name, category.category_id]
  }
}
