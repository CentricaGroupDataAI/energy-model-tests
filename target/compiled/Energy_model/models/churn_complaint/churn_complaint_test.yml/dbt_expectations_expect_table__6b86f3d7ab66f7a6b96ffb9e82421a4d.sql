with relation_columns as (

        
        select
            1 as relation_column_idx,
            cast('CUSTOMER_ID' as string) as relation_column
        union all
        
        select
            2 as relation_column_idx,
            cast('SOURCE_COMPLAINT_ID' as string) as relation_column
        union all
        
        select
            3 as relation_column_idx,
            cast('COMPLAINT_TYPE' as string) as relation_column
        union all
        
        select
            4 as relation_column_idx,
            cast('CREATED_TS' as string) as relation_column
        union all
        
        select
            5 as relation_column_idx,
            cast('CLOSED_TS' as string) as relation_column
        union all
        
        select
            6 as relation_column_idx,
            cast('CONTACT_REASON_1' as string) as relation_column
        union all
        
        select
            7 as relation_column_idx,
            cast('CONTACT_REASON_2' as string) as relation_column
        union all
        
        select
            8 as relation_column_idx,
            cast('CONTACT_REASON_3' as string) as relation_column
        union all
        
        select
            9 as relation_column_idx,
            cast('SOURCE' as string) as relation_column
        
        
    ),
    input_columns as (

        
        select
            1 as input_column_idx,
            cast('CUSTOMER_ID' as string) as input_column
        union all
        
        select
            2 as input_column_idx,
            cast('SOURCE_COMPLAINT_ID' as string) as input_column
        union all
        
        select
            3 as input_column_idx,
            cast('COMPLAINT_TYPE' as string) as input_column
        union all
        
        select
            4 as input_column_idx,
            cast('CREATED_TS' as string) as input_column
        union all
        
        select
            5 as input_column_idx,
            cast('CLOSED_TS' as string) as input_column
        union all
        
        select
            6 as input_column_idx,
            cast('CONTACT_REASON_1' as string) as input_column
        union all
        
        select
            7 as input_column_idx,
            cast('CONTACT_REASON_2' as string) as input_column
        union all
        
        select
            8 as input_column_idx,
            cast('CONTACT_REASON_3' as string) as input_column
        union all
        
        select
            9 as input_column_idx,
            cast('SOURCE' as string) as input_column
        
        
    )
    select *
    from
        relation_columns r
        full outer join
        input_columns i on r.relation_column = i.input_column and r.relation_column_idx = i.input_column_idx
    where
        -- catch any column in input list that is not in the sequence of table columns
        -- or any table column that is not in the input sequence
        r.relation_column is null or
        i.input_column is null