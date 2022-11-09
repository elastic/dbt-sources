
with source as (

    select * from {{ source('raw_salesforce', 'recur_omni_template_message_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
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
        recur_omni_bucket_table_fields_c,
        recur_omni_channel_c,
        recur_omni_channel_id_c,
        recur_omni_language_c,
        recur_omni_object_name_c,
        recur_omni_omni_channel_external_id_field_c,
        recur_omni_template_format_c,
        recur_omni_template_id_c,
        system_modstamp

    from source

)

select * from renamed
