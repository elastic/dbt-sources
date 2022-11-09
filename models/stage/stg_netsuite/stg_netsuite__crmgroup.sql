
with source as (

    select * from {{ source('raw_netsuite', 'crmgroup') }}

),

renamed as (

    select
        group_id,
        group_type,
        is_mfg_work_center,
        is_private,
        is_sales_group,
        is_support_group,
        labor_resources,
        machine_resources,
        owner,
        title,
        work_calendar_id

    from source

)

select * from renamed
