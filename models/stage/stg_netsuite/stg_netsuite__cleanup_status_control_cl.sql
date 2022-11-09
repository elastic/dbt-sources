
with source as (

    select * from {{ source('raw_netsuite', 'cleanup_status_control_cl') }}

),

renamed as (

    select
        cleanup_status_control_cl_exti,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
