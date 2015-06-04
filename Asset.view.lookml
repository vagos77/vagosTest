- view: SPAsset
  sql_table_name: voyanta_db_views.SPAsset
 

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: assetkey
    primary_key: true
    type: number
    sql: ${TABLE}.assetkey

  - dimension: assetreference
    sql: ${TABLE}.assetreference

  - dimension: assetmanager
    sql: ${TABLE}.assetmanager

  - dimension: currencykey
    type: number
    sql: ${TABLE}.currencykey

  - dimension: acctentitykey
    type: number
    sql: ${TABLE}.acctentitykey

  - dimension: providerkey
    type: number
    sql: ${TABLE}.providerkey

  - dimension: benchmarkregionkey
    type: number
    sql: ${TABLE}.benchmarkregionkey

  - dimension: benchmarksubregionkey
    type: number
    sql: ${TABLE}.benchmarksubregionkey

  - dimension: areameasurementunitkey
    type: number
    sql: ${TABLE}.areameasurementunitkey

  - dimension: sectorkey
    type: number
    sql: ${TABLE}.sectorkey
    