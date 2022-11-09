
with source as (

    select * from {{ source('raw_netsuite', 'revrecschedulelines_history') }}

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
