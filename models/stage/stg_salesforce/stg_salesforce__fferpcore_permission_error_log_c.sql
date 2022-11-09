
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_permission_error_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_location_name_c,
        fferpcore_location_type_c,
        fferpcore_namespace_prefix_c,
        fferpcore_operation_c,
        fferpcore_user_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
