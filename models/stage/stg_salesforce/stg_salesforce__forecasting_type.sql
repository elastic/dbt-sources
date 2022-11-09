
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_type') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        can_display_quotas,
        created_by_id,
        created_date,
        developer_name,
        has_product_family,
        is_active,
        is_amount,
        is_deleted,
        is_quantity,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        opportunity_split_type_id,
        role_type,
        system_modstamp,
        territory_2_model_id,
        date_type,
        _fivetran_deleted,
        is_platform_type,
        last_activated_date

    from source

)

select * from renamed
