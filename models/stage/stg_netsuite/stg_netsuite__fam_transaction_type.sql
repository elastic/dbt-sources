
with source as (

    select * from {{ source('raw_netsuite', 'fam_transaction_type') }}

),

renamed as (

    select
        date_created,
        fam_transaction_type_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed