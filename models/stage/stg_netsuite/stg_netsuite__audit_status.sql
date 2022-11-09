
with source as (

    select * from {{ source('raw_netsuite', 'audit_status') }}

),

renamed as (

    select
        audit_status_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
