with relation_columns as (

        
        select
            cast('CUSTOMER_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('SOURCE_COMPLAINT_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('COMPLAINT_TYPE' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('CREATED_TS' as string) as relation_column,
            cast('TIMESTAMP' as string) as relation_column_type
        union all
        
        select
            cast('CLOSED_TS' as string) as relation_column,
            cast('TIMESTAMP' as string) as relation_column_type
        union all
        
        select
            cast('CONTACT_REASON_1' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('CONTACT_REASON_2' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('CONTACT_REASON_3' as string) as relation_column,
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
            relation_column = 'CREATED_TS'
            and
            relation_column_type not in ('TIMESTAMP')

    )
    select *
    from test_data