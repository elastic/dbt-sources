
with source as (

    select * from {{ source('raw_netsuite', 'sod_employee_processing_statu_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        sod_employee_processing_sta_ex

    from source

)

select * from renamed
