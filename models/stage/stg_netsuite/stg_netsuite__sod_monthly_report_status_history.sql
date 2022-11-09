
with source as (

    select * from {{ source('raw_netsuite', 'sod_monthly_report_status_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        sod_monthly_report_status_exti

    from source

)

select * from renamed
