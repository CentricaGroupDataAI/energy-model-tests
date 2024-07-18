with relation_columns as (

        
        select
            1 as relation_column_idx,
            cast('ACCOUNT_ID' as string) as relation_column
        union all
        
        select
            2 as relation_column_idx,
            cast('BILL_ID' as string) as relation_column
        union all
        
        select
            3 as relation_column_idx,
            cast('CHARGE_ID' as string) as relation_column
        union all
        
        select
            4 as relation_column_idx,
            cast('BILL_LINE_ITEM_ID' as string) as relation_column
        union all
        
        select
            5 as relation_column_idx,
            cast('STATEMENT_ID' as string) as relation_column
        union all
        
        select
            6 as relation_column_idx,
            cast('COMMODITY_UID' as string) as relation_column
        union all
        
        select
            7 as relation_column_idx,
            cast('ACCOUNT_TRANSACTION_ID' as string) as relation_column
        union all
        
        select
            8 as relation_column_idx,
            cast('BILL_AMOUNT' as string) as relation_column
        union all
        
        select
            9 as relation_column_idx,
            cast('BILL_PERIOD_FROM' as string) as relation_column
        union all
        
        select
            10 as relation_column_idx,
            cast('BILL_PERIOD_TO' as string) as relation_column
        union all
        
        select
            11 as relation_column_idx,
            cast('BILL_CREATED_DATE' as string) as relation_column
        union all
        
        select
            12 as relation_column_idx,
            cast('CHARGE_START_DATE' as string) as relation_column
        union all
        
        select
            13 as relation_column_idx,
            cast('CHARGE_END_DATE' as string) as relation_column
        union all
        
        select
            14 as relation_column_idx,
            cast('ELEC_BILL_STATUS' as string) as relation_column
        union all
        
        select
            15 as relation_column_idx,
            cast('ELEC_BILL_TYPE' as string) as relation_column
        union all
        
        select
            16 as relation_column_idx,
            cast('ELEC_STANDING_CHARGE' as string) as relation_column
        union all
        
        select
            17 as relation_column_idx,
            cast('ELEC_NUM_DAYS_BILLING' as string) as relation_column
        union all
        
        select
            18 as relation_column_idx,
            cast('ELEC_DAILY_UNIT_CONSUMPTION' as string) as relation_column
        union all
        
        select
            19 as relation_column_idx,
            cast('ELEC_UNITS_CONSUMPTION' as string) as relation_column
        union all
        
        select
            20 as relation_column_idx,
            cast('GAS_BILL_STATUS' as string) as relation_column
        union all
        
        select
            21 as relation_column_idx,
            cast('GAS_BILL_TYPE' as string) as relation_column
        union all
        
        select
            22 as relation_column_idx,
            cast('GAS_STANDING_CHARGE' as string) as relation_column
        union all
        
        select
            23 as relation_column_idx,
            cast('GAS_NUM_DAYS_BILLING' as string) as relation_column
        union all
        
        select
            24 as relation_column_idx,
            cast('GAS_UNITS_CONSUMPTION' as string) as relation_column
        union all
        
        select
            25 as relation_column_idx,
            cast('GAS_DAILY_UNIT_CONSUMPTION' as string) as relation_column
        union all
        
        select
            26 as relation_column_idx,
            cast('MPXN' as string) as relation_column
        union all
        
        select
            27 as relation_column_idx,
            cast('UNIT_RATE' as string) as relation_column
        
        
    ),
    input_columns as (

        
        select
            1 as input_column_idx,
            cast('ACCOUNT_ID' as string) as input_column
        union all
        
        select
            2 as input_column_idx,
            cast('BILL_ID' as string) as input_column
        union all
        
        select
            3 as input_column_idx,
            cast('CHARGE_ID' as string) as input_column
        union all
        
        select
            4 as input_column_idx,
            cast('BILL_LINE_ITEM_ID' as string) as input_column
        union all
        
        select
            5 as input_column_idx,
            cast('STATEMENT_ID' as string) as input_column
        union all
        
        select
            6 as input_column_idx,
            cast('COMMODITY_UID' as string) as input_column
        union all
        
        select
            7 as input_column_idx,
            cast('ACCOUNT_TRANSACTION_ID' as string) as input_column
        union all
        
        select
            8 as input_column_idx,
            cast('BILL_AMOUNT' as string) as input_column
        union all
        
        select
            9 as input_column_idx,
            cast('BILL_PERIOD_FROM' as string) as input_column
        union all
        
        select
            10 as input_column_idx,
            cast('BILL_PERIOD_TO' as string) as input_column
        union all
        
        select
            11 as input_column_idx,
            cast('BILL_CREATED_DATE' as string) as input_column
        union all
        
        select
            12 as input_column_idx,
            cast('CHARGE_START_DATE' as string) as input_column
        union all
        
        select
            13 as input_column_idx,
            cast('CHARGE_END_DATE' as string) as input_column
        union all
        
        select
            14 as input_column_idx,
            cast('ELEC_BILL_STATUS' as string) as input_column
        union all
        
        select
            15 as input_column_idx,
            cast('ELEC_BILL_TYPE' as string) as input_column
        union all
        
        select
            16 as input_column_idx,
            cast('ELEC_STANDING_CHARGE' as string) as input_column
        union all
        
        select
            17 as input_column_idx,
            cast('ELEC_NUM_DAYS_BILLING' as string) as input_column
        union all
        
        select
            18 as input_column_idx,
            cast('ELEC_DAILY_UNIT_CONSUMPTION' as string) as input_column
        union all
        
        select
            19 as input_column_idx,
            cast('ELEC_UNITS_CONSUMPTION' as string) as input_column
        union all
        
        select
            20 as input_column_idx,
            cast('GAS_BILL_STATUS' as string) as input_column
        union all
        
        select
            21 as input_column_idx,
            cast('GAS_BILL_TYPE' as string) as input_column
        union all
        
        select
            22 as input_column_idx,
            cast('GAS_STANDING_CHARGE' as string) as input_column
        union all
        
        select
            23 as input_column_idx,
            cast('GAS_NUM_DAYS_BILLING' as string) as input_column
        union all
        
        select
            24 as input_column_idx,
            cast('GAS_UNITS_CONSUMPTION' as string) as input_column
        union all
        
        select
            25 as input_column_idx,
            cast('GAS_DAILY_UNIT_CONSUMPTION' as string) as input_column
        union all
        
        select
            26 as input_column_idx,
            cast('MPXN' as string) as input_column
        union all
        
        select
            27 as input_column_idx,
            cast('UNIT_RATE' as string) as input_column
        
        
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