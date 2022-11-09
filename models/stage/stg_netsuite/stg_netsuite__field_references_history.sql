
with source as (

    select * from {{ source('raw_netsuite', 'field_references_history') }}

),

renamed as (

    select
        custom_body_fields_id,
        custom_column_fields_id,
        custom_crm_fields_id,
        custom_email_templates_id,
        custom_entity_fields_id,
        custom_item_fields_id,
        custom_item_number_fields_id,
        custom_other_fields_id,
        custom_record_types_id,
        date_created,
        field_references_extid,
        field_references_id,
        field_types_list_id,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
