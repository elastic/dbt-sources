
with source as (

    select * from {{ source('raw_salesforce', 'pdri_data_set_template_entry_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_content_document_id_c,
        pdri_data_set_template_c,
        pdri_description_c,
        pdri_file_download_c,
        pdri_file_info_c,
        system_modstamp

    from source

)

select * from renamed
