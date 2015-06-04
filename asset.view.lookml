- view: asset
  sql_table_name: voyanta_db_views.Asset
  fields:

  - dimension: acct_entity_key
    type: int
    sql: ${TABLE}.AcctEntityKey

  - dimension: active
    sql: ${TABLE}.Active

  - dimension: area_measurement_unit_key
    type: int
    sql: ${TABLE}.AreaMeasurementUnitKey

  - dimension: asset_custom_classification1_key
    type: int
    sql: ${TABLE}.AssetCustomClassification1Key

  - dimension: asset_custom_classification2_key
    type: int
    sql: ${TABLE}.AssetCustomClassification2Key

  - dimension: asset_custom_classification3_key
    type: int
    sql: ${TABLE}.AssetCustomClassification3Key

  - dimension: asset_custom_classification4_key
    type: int
    sql: ${TABLE}.AssetCustomClassification4Key

  - dimension: asset_custom_classification5_key
    type: int
    sql: ${TABLE}.AssetCustomClassification5Key

  - dimension: asset_key
    type: int
    sql: ${TABLE}.AssetKey

  - dimension: asset_manager
    sql: ${TABLE}.AssetManager

  - dimension: asset_reference
    sql: ${TABLE}.AssetReference

  - dimension: benchmark_region_key
    type: int
    sql: ${TABLE}.BenchmarkRegionKey

  - dimension: benchmark_sub_region_key
    type: int
    sql: ${TABLE}.BenchmarkSubRegionKey

  - dimension: building_name
    sql: ${TABLE}.BuildingName

  - dimension: business_unit_key
    type: int
    sql: ${TABLE}.BusinessUnitKey

  - dimension: client_asset_reference
    sql: ${TABLE}.ClientAssetReference

  - dimension: client_key
    type: int
    sql: ${TABLE}.ClientKey

  - dimension: comments
    sql: ${TABLE}.Comments

  - dimension: currency_key
    type: int
    sql: ${TABLE}.CurrencyKey

  - dimension_group: date_of_last_property_inspection
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DateOfLastPropertyInspection

  - dimension: external_asset_reference
    sql: ${TABLE}.ExternalAssetReference

  - dimension: external_ground_lease
    sql: ${TABLE}.ExternalGroundLease

  - dimension: insurance_coverage_amount
    sql: ${TABLE}.InsuranceCoverageAmount

  - dimension_group: insurance_policy_expiry
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.InsurancePolicyExpiryDate

  - dimension: insurance_policy_premium
    sql: ${TABLE}.InsurancePolicyPremium

  - dimension: is_superseded
    sql: ${TABLE}.IsSuperseded

  - dimension_group: last_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.lastUpdated

  - dimension: latitude
    sql: ${TABLE}.Latitude

  - dimension: lifecycle_key
    type: int
    sql: ${TABLE}.LifecycleKey

  - dimension: longitude
    sql: ${TABLE}.Longitude

  - dimension: number_of_buildings
    type: int
    sql: ${TABLE}.NumberOfBuildings

  - dimension: parking_structure
    sql: ${TABLE}.ParkingStructure

  - dimension: property_form_of_title_key
    type: int
    sql: ${TABLE}.PropertyFormOfTitleKey

  - dimension: property_management_company
    sql: ${TABLE}.PropertyManagementCompany

  - dimension: provider_key
    type: int
    sql: ${TABLE}.ProviderKey

  - dimension: risk_profile_key
    type: int
    sql: ${TABLE}.RiskProfileKey

  - dimension: sector_key
    type: int
    sql: ${TABLE}.SectorKey

  - dimension: statistical_division_key
    type: int
    sql: ${TABLE}.StatisticalDivisionKey

  - measure: count
    type: count
    drill_fields: [building_name]

