- view: accountbalance
  sql_table_name: voyanta_db_views.accountbalance
  
  fields:

  - dimension: balancekey
    type: int
    sql: ${TABLE}.balancekey

  - dimension: acctentitykey
    type: int
    sql: ${TABLE}.acctentitykey

  - dimension: accountkey
    type: int
    sql: ${TABLE}.accountkey

  - dimension: internaltransactiondate
    type: date
    sql: ${TABLE}.internaltransactiondate

  - dimension: accountname
    sql: ${TABLE}.accountname

  - dimension: valuereference
    sql: ${TABLE}.valuereference

  - dimension: amount_fx_dim
    type: number
    sql: ${TABLE}.amount_fx

  - dimension: clientkey_in
    type: int
    sql: ${TABLE}.clientkey_in

  - dimension: report_start_date
    sql: ${TABLE}.report_start_date

  - dimension: report_end_date
    sql: ${TABLE}.report_end_date

  - dimension: report_currency_to
    sql: ${TABLE}.report_currency_to

  sets:
    detail:
      - balancekey
      - acctentitykey
      - accountkey
      - internaltransactiondate
      - amount
      - ytdbalance
      - accountname
      - valuereference
      - amount_fx
      - currencyfrom
      - currencyto
      - clientkey_in
      - report_start_date
      - report_end_date
      - report_currency_to

