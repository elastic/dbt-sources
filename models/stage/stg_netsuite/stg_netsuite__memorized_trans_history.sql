
with source as (

    select * from {{ source('raw_netsuite', 'memorized_trans_history') }}

),

renamed as (

    select
        automatic_entry,
        date_next_posting,
        date_subsequent_posting,
        days_in_advance,
        employee_id,
        frequency,
        ingroup,
        isdeferred,
        isgroup,
        memorized_id,
        next_occurance,
        number_remaining,
        subsequent_occurance,
        transaction_id,
        update_addresses,
        update_prices

    from source

)

select * from renamed
