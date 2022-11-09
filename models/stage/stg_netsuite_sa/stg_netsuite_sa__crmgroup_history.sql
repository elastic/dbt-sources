
with source as (

    select * from {{ source('raw_netsuite_sa', 'crmgroup_history') }}

),

renamed as (

    select
        group_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        group_type,
        is_mfg_work_center,
        is_private,
        is_sales_group,
        is_support_group,
        labor_resources,
        machine_resources,
        owner,
        title,
        work_calendar_id,
        partition_date

    from source

)

select * from renamed
