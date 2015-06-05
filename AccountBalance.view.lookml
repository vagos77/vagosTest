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
  
  - dimension: buildingname
    sql: ${TABLE}.buildingname

  - dimension: internaltransactiondate
    type: date
    sql: ${TABLE}.internaltransactiondate

  - dimension: accountname
    sql: ${TABLE}.accountname

  - dimension: accountcategory
    sql: ${TABLE}.accountcategory

  - dimension: amount_fx_dim
    type: number
    hidden: true
    sql: ${TABLE}.amount_fx
  
  - measure: amount_fx
    type: sum
    sql: ${amount_fx_dim}*-1
    
  - measure: noi
    label: "NOI"
    type: sum
    sql: ${amount_fx_dim}*-1
    drill_fields: [acctcat_to_name]
    filters: 
      accountcategory: Operating Revenue, Operating Expense
      
  - measure: ni
    label: "NI"
    type: sum
    sql: ${amount_fx_dim}*-1
    drill_fields: [acctcat_to_name]
    filters: 
      accountcategory: Operating Revenue, Operating Expense, Other Revenue, Other Expense

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
    acctcat_to_name: [accountcategory, accountname]


