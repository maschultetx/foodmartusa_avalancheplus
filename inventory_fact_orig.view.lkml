view: inventory_fact_orig {
  sql_table_name: dbuser.inventory_fact_orig ;;

  dimension_group: inventory {
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
    sql: ${TABLE}.inventory_date ;;
  }

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_invoice {
    type: number
    sql: ${TABLE}.store_invoice ;;
  }

  dimension: supply_time {
    type: number
    sql: ${TABLE}.supply_time ;;
  }

  dimension: units_ordered {
    type: number
    sql: ${TABLE}.units_ordered ;;
  }

  dimension: units_shipped {
    type: number
    sql: ${TABLE}.units_shipped ;;
  }

  dimension: warehouse_cost {
    type: number
    sql: ${TABLE}.warehouse_cost ;;
  }

  dimension: warehouse_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.warehouse_id ;;
  }

  dimension: warehouse_sales {
    type: number
    sql: ${TABLE}.warehouse_sales ;;
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
      warehouse.warehouse_id,
      warehouse.name,
      warehouse.owner_name,
      store.store_id,
      store.name
    ]
  }
}
