
with source as (

    select * from {{ source('raw_salesforce', 'field_ops_helpdesk_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        additional_request_attributes_c,
        created_by_id,
        created_date,
        currency_iso_code,
        detail_description_label_c,
        display_text_c,
        is_active_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        request_attributes_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
