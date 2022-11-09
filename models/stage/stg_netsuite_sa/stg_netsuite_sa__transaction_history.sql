
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_history') }}

),

renamed as (

    select
        date_time,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        action,
        amount,
        date_deleted,
        date_transaction,
        document_number,
        entity_id,
        transaction_number,
        transaction_type,
        user_id

    from source

)

select * from renamed
