view: customer {
  sql_table_name: dbuser.customer ;;

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: account_num {
    type: number
    sql: ${TABLE}.account_num ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}.address1 ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}.address2 ;;
  }

  dimension: address3 {
    type: string
    sql: ${TABLE}.address3 ;;
  }

  dimension: address4 {
    type: string
    sql: ${TABLE}.address4 ;;
  }

  dimension_group: birthdate {
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
    sql: ${TABLE}.birthdate ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: date_accnt_opened {
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
    sql: ${TABLE}.date_accnt_opened ;;
  }

  dimension: education {
    type: string
    sql: ${TABLE}.education ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}.fname ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}.fullname ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: houseowner {
    type: string
    sql: ${TABLE}.houseowner ;;
  }

  dimension: lname {
    type: string
    sql: ${TABLE}.lname ;;
  }

  dimension: marital_status {
    type: string
    sql: ${TABLE}.marital_status ;;
  }

  dimension: member_card {
    type: string
    sql: ${TABLE}.member_card ;;
  }

  dimension: mi {
    type: string
    sql: ${TABLE}.mi ;;
  }

  dimension: num_cars_owned {
    type: number
    sql: ${TABLE}.num_cars_owned ;;
  }

  dimension: num_children_at_home {
    type: number
    sql: ${TABLE}.num_children_at_home ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: phone1 {
    type: string
    sql: ${TABLE}.phone1 ;;
  }

  dimension: phone2 {
    type: string
    sql: ${TABLE}.phone2 ;;
  }

  dimension: region_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.region_id ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: total_children {
    type: number
    sql: ${TABLE}.total_children ;;
  }

  dimension: yearly_income {
    type: string
    sql: ${TABLE}.yearly_income ;;
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
      customer_id,
      fname,
      lname,
      fullname,
      region.region_id,
      region.name,
      customer_orig.count,
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
