
with source as (

    select * from {{ source('raw_salesforce', 'appirio_core_config_value_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        appirio_core_config_option_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        appirio_core_custom_attribute_1_c,
        appirio_core_custom_attribute_2_c,
        appirio_core_display_width_c,
        appirio_core_sort_c,
        appirio_core_value_c

    from source

)

select * from renamed
