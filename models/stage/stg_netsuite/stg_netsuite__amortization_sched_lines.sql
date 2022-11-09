
with source as (

    select * from {{ source('raw_netsuite', 'amortization_sched_lines') }}

),

renamed as (

    select
        account_id,
        accounting_period_id,
        amount,
        is_recognized,
        journal_id,
        schedule_id

    from source

)

select * from renamed
