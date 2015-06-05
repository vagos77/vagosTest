- connection: voyanta_direct

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards



- explore:  assetvaluation
  label: "Asset Valuation"
  access_filter_fields: [assetvaluation.clientkey_in]
  always_filter:
    assetvaluation.report_start_date: '2013-01-01'
    assetvaluation.report_end_date: '2013-12-31'
    
- explore: accountbalance
  label: "Account Balance"
  access_filter_fields: [accountbalance.clientkey_in]
  always_filter:
    report_start_date: '2013-01-01'
    report_end_date: '2013-12-31'
  joins:
    - join: assetvaluation
      sql_on: ${assetvaluation.acctentitykey}=${accountbalance.acctentitykey}

     


