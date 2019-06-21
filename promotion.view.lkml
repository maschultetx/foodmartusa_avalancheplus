view: promotion {
  sql_table_name: dbuser.promotion ;;

  dimension: promotion_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.promotion_id ;;
  }

  dimension: cost {
    type: string
    sql: ${TABLE}.cost ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}.media_type ;;
  }

  dimension: promotion_district_id {
    type: number
    sql: ${TABLE}.promotion_district_id ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}.promotion_name ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      promotion_id,
      promotion_name,
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
