
with source as (

    select * from {{ source('raw_salesforce', 'appirio_core_config_group_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        appirio_core_key_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        appirio_core_description_c,
        appirio_core_version_c

    from source

)

select * from renamed
