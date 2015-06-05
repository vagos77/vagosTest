- view: assetvaluation
  sql_table_name: voyanta_db_views.assetvaluation
  

  fields:
  - dimension: assetvaluationkey
    type: int
    sql: ${TABLE}.assetvaluationkey

  - dimension: assetkey
    type: int
    sql: ${TABLE}.assetkey

  - dimension: valuationdate
    sql: ${TABLE}.valuationdate

  - dimension: valuationmethod
    sql: ${TABLE}.valuationmethod

  - dimension: buildingname
    sql: ${TABLE}.buildingname

  - dimension: assetreference
    sql: ${TABLE}.assetreference

  - dimension: assetmanager
    sql: ${TABLE}.assetmanager

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: acctentitykey
    type: int
    sql: ${TABLE}.acctentitykey

  - dimension: benchmarkregion
    sql: ${TABLE}.benchmarkregion

  - dimension: benchmarksubregion
    sql: ${TABLE}.benchmarksubregion

  - dimension: areameasurementunit
    sql: ${TABLE}.areameasurementunit

  - dimension: sector
    sql: ${TABLE}.sector

  - dimension: clientkey_in
    type: int
    hidden: true
    sql: ${TABLE}.clientkey_in

  - dimension: report_start_date
    sql: ${TABLE}.report_start_date

  - dimension: report_end_date
    sql: ${TABLE}.report_end_date
    
    
  - measure: assetvalue
    type: sum
    drill_fields: [sector_to_asset]
    sql: ${TABLE}.assetvalue

  sets:
    sector_to_asset: [sector, buildingname]


    


