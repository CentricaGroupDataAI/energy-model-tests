with relation_columns as (

        
        select
            cast('MPXN' as string) as relation_column,
            cast('VARCHAR(15)' as string) as relation_column_type
        union all
        
        select
            cast('CUSTOMER_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('SUPPLY_START_DT' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('SUPPLY_END_DT' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('MIGRATION_DT' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('ADDRESS_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('ACCOUNT_ID' as string) as relation_column,
            cast('VARCHAR(32)' as string) as relation_column_type
        union all
        
        select
            cast('PRODUCT_CATEGORY' as string) as relation_column,
            cast('VARCHAR(4)' as string) as relation_column_type
        union all
        
        select
            cast('PRODUCT_NAME' as string) as relation_column,
            cast('VARCHAR(100)' as string) as relation_column_type
        union all
        
        select
            cast('PRODUCT_START_DT' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('PRODUCT_END_DT' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('SOURCE_DOMAIN' as string) as relation_column,
            cast('VARCHAR(20)' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'PRODUCT_START_DT'
            and
            relation_column_type not in ('DATE')

    )
    select *
    from test_data