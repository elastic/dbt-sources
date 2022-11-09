
with source as (

    select * from {{ source('raw_netsuite', 'deferred_tax_list_history') }}

),

renamed as (

    select
        date_created,
        deferred_tax_list_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
