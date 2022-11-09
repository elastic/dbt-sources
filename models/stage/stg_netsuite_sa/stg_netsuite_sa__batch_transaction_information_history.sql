
with source as (

    select * from {{ source('raw_netsuite_sa', 'batch_transaction_information_history') }}

),

renamed as (

    select
        batch_transaction_informati_id,
        _fivetran_deleted,
        _fivetran_synced,
        batch_id,
        batch_transaction_informati_ex,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        transaction_id,
        partition_date

    from source

)

select * from renamed
