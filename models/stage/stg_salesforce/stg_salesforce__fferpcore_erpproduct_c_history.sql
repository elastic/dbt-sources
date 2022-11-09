
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_erpproduct_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_developer_name_c,
        fferpcore_service_pack_c,
        fferpcore_version_major_c,
        fferpcore_version_minor_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        fferpcore_custom_c,
        fferpcore_obsolete_c

    from source

)

select * from renamed
