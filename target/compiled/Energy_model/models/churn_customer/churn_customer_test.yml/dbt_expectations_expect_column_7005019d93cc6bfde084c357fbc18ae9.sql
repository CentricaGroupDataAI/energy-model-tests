with relation_columns as (

        
        select
            cast('CUSTOMER_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('SALUTATION' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('VULRABILITY' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('MARKETING_CONSENT' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('NAME' as string) as relation_column,
            cast('VARCHAR(128)' as string) as relation_column_type
        union all
        
        select
            cast('EMAIL' as string) as relation_column,
            cast('ARRAY<STRING>' as string) as relation_column_type
        union all
        
        select
            cast('PHONE' as string) as relation_column,
            cast('ARRAY<STRING>' as string) as relation_column_type
        union all
        
        select
            cast('GENDER' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('BIRTH_DT' as string) as relation_column,
            cast('TIMESTAMP' as string) as relation_column_type
        union all
        
        select
            cast('DEATH_DT' as string) as relation_column,
            cast('TIMESTAMP' as string) as relation_column_type
        union all
        
        select
            cast('SOURCE_DOMAIN' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'BIRTH_DT'
            and
            relation_column_type not in ('DATE')

    )
    select *
    from test_data