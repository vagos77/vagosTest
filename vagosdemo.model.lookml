- connection: voyanta_direct

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore:  SPAsset
  label: "Asset Dimension"
  always_filter: 
    clientkey_in: 748
    
  joins:
    -join: SPAssetVal
    foreign_key: asset_key
    
- explore: SPAssetVal
  label: "Asset Valuation"
  always_filter:
    clientkey_in: 748

