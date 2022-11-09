
with source as (

    select * from {{ source('raw_netsuite_sa', 'field_references_history') }}

),

renamed as (

    select
        field_references_id,
        _fivetran_deleted,
        _fivetran_synced,
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
        date_deleted,
        field_references_extid,
        field_types_list_id,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
