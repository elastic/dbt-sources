
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_stage') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        api_name,
        created_by_id,
        created_date,
        default_probability,
        description,
        forecast_category,
        forecast_category_name,
        is_active,
        is_closed,
        is_won,
        last_modified_by_id,
        last_modified_date,
        master_label,
        sort_order,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
