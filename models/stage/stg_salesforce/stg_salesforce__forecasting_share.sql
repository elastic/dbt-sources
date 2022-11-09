
with source as (

    select * from {{ source('raw_salesforce', 'forecasting_share') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        access_level,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        role_type,
        shared_forecast_manager_role_id,
        system_modstamp,
        user_or_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
