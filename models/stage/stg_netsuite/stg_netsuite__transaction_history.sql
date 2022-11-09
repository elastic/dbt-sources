
with source as (

    select * from {{ source('raw_netsuite', 'transaction_history') }}

),

renamed as (

    select
        account_id,
        action,
        amount,
        date_time,
        date_transaction,
        document_number,
        entity_id,
        transaction_id,
        transaction_number,
        transaction_type,
        user_id

    from source

)

select * from renamed
