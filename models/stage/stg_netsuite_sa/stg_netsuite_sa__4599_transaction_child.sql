
with source as (

    select * from {{ source('raw_netsuite_sa', '4599_transaction_child') }}

),

renamed as (

    select
        n_4599_transaction_child_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        n_4599_transaction_child_extid,
        parent_id,
        subsidiary_transaction_id,
        transaction_id

    from source

)

select * from renamed
