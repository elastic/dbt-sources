
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_feature_enablement_log_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_activation_number_c,
        fferpcore_feature_name_c,
        fferpcore_is_enablement_c,
        fferpcore_log_detail_c,
        fferpcore_log_severity_c,
        fferpcore_step_name_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
