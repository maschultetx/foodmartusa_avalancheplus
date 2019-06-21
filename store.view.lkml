view: store {
  sql_table_name: dbuser.store ;;

  dimension: store_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: coffee_bar {
    type: string
    sql: ${TABLE}.coffee_bar ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension_group: first_opened {
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
    sql: ${TABLE}.first_opened_date ;;
  }

  dimension: florist {
    type: string
    sql: ${TABLE}.florist ;;
  }

  dimension: frozen_sqft {
    type: number
    sql: ${TABLE}.frozen_sqft ;;
  }

  dimension: grocery_sqft {
    type: number
    sql: ${TABLE}.grocery_sqft ;;
  }

  dimension_group: last_remodel {
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
    sql: ${TABLE}.last_remodel_date ;;
  }

  dimension: manager {
    type: string
    sql: ${TABLE}.manager ;;
  }

  dimension: meat_sqft {
    type: number
    sql: ${TABLE}.meat_sqft ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: prepared_food {
    type: string
    sql: ${TABLE}.prepared_food ;;
  }

  dimension: region_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.region_id ;;
  }

  dimension: salad_bar {
    type: string
    sql: ${TABLE}.salad_bar ;;
  }

  dimension: state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  dimension: store_number {
    type: number
    sql: ${TABLE}.store_number ;;
  }

  dimension: store_sqft {
    type: number
    sql: ${TABLE}.store_sqft ;;
  }

  dimension: store_type {
    type: string
    sql: ${TABLE}.store_type ;;
  }

  dimension: video_store {
    type: string
    sql: ${TABLE}.video_store ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      store_id,
      name,
      region.region_id,
      region.name,
      employee.count,
      expense_fact.count,
      inventory_fact.count,
      inventory_fact_orig.count,
      sales_fact.count,
      sales_fact_1999.count,
      sales_fact_2000.count,
      sales_fact_2001.count,
      sales_fact_2002.count,
      sales_fact_2003.count,
      sales_fact_2004.count,
      sales_fact_2005.count,
      sales_fact_2006.count,
      sales_fact_2007.count,
      sales_fact_2008.count,
      sales_fact_2009.count,
      sales_fact_2010.count,
      sales_fact_2011.count,
      sales_fact_2012.count,
      sales_fact_2013.count,
      sales_fact_2014.count,
      sales_fact_2015.count,
      sales_fact_2016.count,
      sales_fact_2017.count,
      sales_fact_2018.count,
      sales_fact_exp.count,
      sales_fact_load_source.count,
      sales_fact_load_source2.count,
      sales_fact_new.count,
      sales_fact_orig.count,
      view_50m.count,
      view_75m.count
    ]
  }
}
