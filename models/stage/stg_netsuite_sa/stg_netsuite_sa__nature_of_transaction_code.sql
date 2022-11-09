
with source as (

    select * from {{ source('raw_netsuite_sa', 'nature_of_transaction_code') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        nature_of_transaction_code_ext

    from source

)

select * from renamed
