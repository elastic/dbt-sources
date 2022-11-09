
with source as (

    select * from {{ source('raw_netsuite', 'record_status_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        record_status_extid,
        record_status_id,
        record_status_name,
        record_type

    from source

)

select * from renamed
