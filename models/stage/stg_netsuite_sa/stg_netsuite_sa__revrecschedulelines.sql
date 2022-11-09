
with source as (

    select * from {{ source('raw_netsuite_sa', 'revrecschedulelines') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        accounting_period_id,
        amount,
        date_deleted,
        is_recognized,
        journal_id,
        schedule_id,
        fivetran_index

    from source

)

select * from renamed
