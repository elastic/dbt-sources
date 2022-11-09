
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_page_info_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        jbcxm_display_order_c,
        jbcxm_is_translation_c,
        jbcxm_language_c,
        jbcxm_meta_data_c,
        jbcxm_survey_c,
        jbcxm_translation_for_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
