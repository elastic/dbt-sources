
with source as (

    select * from {{ source('raw_netsuite', 'amortization_sched_lines_history') }}

),

renamed as (

    select
        accounting_period_id,
        account_id,
        amount,
        is_recognized,
        journal_id,
        schedule_id

    from source

)

select * from renamed
