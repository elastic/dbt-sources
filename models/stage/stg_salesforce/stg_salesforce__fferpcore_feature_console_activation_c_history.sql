
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_feature_console_activation_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_activation_number_c,
        fferpcore_enabled_c,
        fferpcore_memento_c,
        fferpcore_status_c,
        fferpcore_target_id_c,
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
