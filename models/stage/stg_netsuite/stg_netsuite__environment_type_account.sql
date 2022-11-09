
with source as (

    select * from {{ source('raw_netsuite', 'environment_type_account') }}

),

renamed as (

    select
        date_created,
        environment_type_account_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
