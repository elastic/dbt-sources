
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gstranslation_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_category_c,
        jbcxm_display_order_c,
        jbcxm_language_c,
        jbcxm_text_c,
        jbcxm_translation_for_c,
        jbcxm_uid_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
