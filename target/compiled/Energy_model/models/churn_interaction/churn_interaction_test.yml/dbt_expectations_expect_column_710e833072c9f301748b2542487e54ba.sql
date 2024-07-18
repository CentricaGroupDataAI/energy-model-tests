with relation_columns as (

        
        select
            cast('INTERACTION_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('CUSTOMER_ID' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('DIRECTION' as string) as relation_column,
            cast('VARCHAR(64)' as string) as relation_column_type
        union all
        
        select
            cast('INTERACTION_TS' as string) as relation_column,
            cast('TIMESTAMP' as string) as relation_column_type
        union all
        
        select
            cast('INTERACTION_REASON_L1' as string) as relation_column,
            cast('VARCHAR(256)' as string) as relation_column_type
        union all
        
        select
            cast('INTERACTION_REASON_L2' as string) as relation_column,
            cast('VARCHAR(256)' as string) as relation_column_type
        union all
        
        select
            cast('INTERACTION_REASON_L3' as string) as relation_column,
            cast('VARCHAR(256)' as string) as relation_column_type
        union all
        
        select
            cast('CONNECTED_TO_AGENT' as string) as relation_column,
            cast('BOOLEAN' as string) as relation_column_type
        union all
        
        select
            cast('QUEUE_TIME' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('TALK_TIME' as string) as relation_column,
            cast('INT' as string) as relation_column_type
        union all
        
        select
            cast('INTERACTION_TYPE' as string) as relation_column,
            cast('VARCHAR(256)' as string) as relation_column_type
        union all
        
        select
            cast('INTERACTION_SOURCE' as string) as relation_column,
            cast('VARCHAR(256)' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'CUSTOMER_ID'
            and
            relation_column_type not in ('INT')

    )
    select *
    from test_data