
with source as (

    select * from {{ source('raw_salesforce', 'appirio_core_app_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        appirio_core_level_c,
        appirio_core_origin_c,
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
        appirio_core_category_c,
        appirio_core_data_2_c,
        appirio_core_data_c,
        appirio_core_message_c

    from source

)

select * from renamed
