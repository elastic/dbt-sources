
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_status') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        sod_rule_status_extid

    from source

)

select * from renamed
