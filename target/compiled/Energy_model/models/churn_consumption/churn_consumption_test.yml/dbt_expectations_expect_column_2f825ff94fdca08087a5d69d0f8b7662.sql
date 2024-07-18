with relation_columns as (

        
        select
            cast('CURRENT_ACCOUNT_ID' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('CONSUMPTION_ITEM_ID' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('MPXN' as string) as relation_column,
            cast('BIGINT' as string) as relation_column_type
        union all
        
        select
            cast('METER_POINT_TYPE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('RECORDED_DATE' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('RECORDED_TS' as string) as relation_column,
            cast('TIMESTAMP' as string) as relation_column_type
        union all
        
        select
            cast('CHARGE_START_DATE' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('CHARGE_END_DATE' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('ACTUAL_OR_ESTIMATED' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('METER_READING_SOURCE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('START_END_DATE_UNITS_CONSUMED' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('UNIT_TYPE_UID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('START_END_DATE_UNITS_RATE' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('STANDING_CHARGE' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('START_END_DATE_BILLED_AMOUNT' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('METER_READING_VALUE' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('DAILY_UNIT_CONSUMPTION' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        union all
        
        select
            cast('DAYS_CONSUMED' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('QUANTITY_ENERGY_CONSUMED' as string) as relation_column,
            cast('FLOAT' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'CHARGE_END_DATE'
            and
            relation_column_type not in ('DATE')

    )
    select *
    from test_data