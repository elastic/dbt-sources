
with source as (

    select * from {{ source('raw_netsuite_sa', 'memorized_trans_history') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        action,
        automatic_entry,
        date_deleted,
        date_next_posting,
        date_subsequent_posting,
        days_in_advance,
        employee_id,
        frequency,
        ingroup,
        is_inactive,
        is_indefinite,
        isdeferred,
        isgroup,
        memorized_id,
        next_occurance,
        number_remaining,
        repeat_every,
        subsequent_occurance,
        time_period,
        transaction_id,
        update_addresses,
        update_prices,
        fivetran_index,
        partition_date

    from source

)

select * from renamed
