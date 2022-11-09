
with source as (

    select * from {{ source('raw_netsuite', 'batch_transaction_information_history') }}

),

renamed as (

    select
        batch_id,
        batch_transaction_informati_ex,
        batch_transaction_informati_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        transaction_id

    from source

)

select * from renamed
