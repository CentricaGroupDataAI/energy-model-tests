with relation_columns as (

        
        select
            cast('ADDRESS_ID' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('ILU_AKEY' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('UPRN' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('POSTCODE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('PROPERTY_TYPE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('FLOOR_AREA_SQM' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('BUILDING_VOLUME_CUBIC_M' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('GAS_ANNUAL_CONSUMPTION' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('ELE_ANNUAL_CONSUMPTION' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('LATITUDE' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('LONGITUDE' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('PES_REGION' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('WMIS_REGION' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('WMIS_PATCH' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('GEOCODE_MULTIPLICITY' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('POSTCODE_DENSITY' as string) as relation_column,
            cast('BIGINT' as string) as relation_column_type
        union all
        
        select
            cast('BEDROOM_COUNT' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('HEIGHT_IN_METERS' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('MPAN' as string) as relation_column,
            cast('VARCHAR(15)' as string) as relation_column_type
        union all
        
        select
            cast('MPRN' as string) as relation_column,
            cast('VARCHAR(15)' as string) as relation_column_type
        union all
        
        select
            cast('GAS_METER_TYPE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('ELE_METER_TYPE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('EASTINGS' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('NORTHINGS' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('RURAL_URBAN' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('HOUSING_TENURE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('PROPERTY_AGE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('COUNCIL_TAX_BAND' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('BURGLARY_RATE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('PROPERTY_PRICE' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('DATE_LAST_SOLD' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('NUMBER_OF_RADIATORS' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('EPC_ASSESSMENT_DATE' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('CURRENT_ENERGY_EFFICIENCY_RATING_BAND' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('HEATING_EFFICIENCY' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('HEATING_TYPE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('CO2_EMISSIONS_CURRENT_PER_FLOOR_AREA' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('FLOOR_ENERGY_EFF' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('MAINHEAT_ENERGY_EFF' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('HOT_WATER_ENERGY_EFF' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('LIGHTING_ENERGY_EFF' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('CURRENT_EMISSIONS' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('PHOTOVOLTAIC_SUPPLY' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'MPRN'
            and
            relation_column_type not in ('STRING')

    )
    select *
    from test_data