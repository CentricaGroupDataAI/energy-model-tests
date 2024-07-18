with relation_columns as (

        
        select
            cast('NPS_SURVEY_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('CUSTOMER_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('SURVEY_TS' as string) as relation_column,
            cast('TIMESTAMP' as string) as relation_column_type
        union all
        
        select
            cast('NPS_SCORE' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('SURVEY_TYPE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('SOURCE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'NPS_SURVEY_ID'
            and
            relation_column_type not in ('STRING')

    )
    select *
    from test_data