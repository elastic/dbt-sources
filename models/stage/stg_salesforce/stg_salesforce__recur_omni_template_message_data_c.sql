
with source as (

    select * from {{ source('raw_salesforce', 'recur_omni_template_message_data_c') }}

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
        name,
        recur_omni_data_type_c,
        recur_omni_data_value_format_c,
        recur_omni_image_path_c,
        recur_omni_index_c,
        recur_omni_template_message_c,
        recur_omni_whatsapp_component_type_c,
        system_modstamp

    from source

)

select * from renamed
