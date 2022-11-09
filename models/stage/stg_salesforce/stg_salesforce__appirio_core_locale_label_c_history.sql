
with source as (

    select * from {{ source('raw_salesforce', 'appirio_core_locale_label_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        appirio_core_bundle_name_c,
        appirio_core_is_framework_bundle_c,
        appirio_core_locale_c,
        appirio_core_value_c,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
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
