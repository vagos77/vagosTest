# # Specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.assetdimension
#
# # Or, you could make this view a derived table, like this:
#   derived_table:
#     sql: |
#       SELECT
#         users.id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.date) as most_recent_purchase_date
#       FROM orders
#       GROUP BY user.id

  fields:
# #     Define your dimensions and measures here, like this:
#     - dimension: profit
#       type: number
#       sql: ${TABLE}.profit
#
#     - measure: total_profit
#       type: sum
#       sql: ${profit}

- view: assetdimension
  sql_table_name: voyanta_db_views.SPAsset
 

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: assetkey
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

  - dimension: clientkey_in
    type: number
    sql: ${TABLE}.clientkey_in

  sets:
    detail:
      - assetkey
      - assetreference
      - assetmanager
      - currencykey
      - acctentitykey
      - providerkey
      - benchmarkregionkey
      - benchmarksubregionkey
      - areameasurementunitkey
      - sectorkey
      - clientkey_in


