view: sales_fact_2011 {
  sql_table_name: dbuser.sales_fact_2011 ;;

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: promotion_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.promotion_id ;;
  }

  dimension_group: sales {
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
    sql: ${TABLE}.sales_date ;;
  }

  dimension: store_cost {
    type: number
    sql: ${TABLE}.store_cost ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_sales {
    type: string
    sql: ${TABLE}.store_sales ;;
  }

  dimension: unit_sales {
    type: number
    sql: ${TABLE}.unit_sales ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      product.product_id,
      product.product_name,
      product.brand_name,
      promotion.promotion_id,
      promotion.promotion_name,
      customer.customer_id,
      customer.fname,
      customer.lname,
      customer.fullname,
      store.store_id,
      store.name
    ]
  }
}
