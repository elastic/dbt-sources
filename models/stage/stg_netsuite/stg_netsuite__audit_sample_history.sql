
with source as (

    select * from {{ source('raw_netsuite', 'audit_sample_history') }}

),

renamed as (

    select
        audit_sample_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
