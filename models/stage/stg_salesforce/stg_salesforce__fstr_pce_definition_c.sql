
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_definition_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_categories_c,
        fstr_chatter_enabled_c,
        fstr_criteria_count_c,
        fstr_definition_criteria_c,
        fstr_definition_hierarchy_c,
        fstr_description_c,
        fstr_disable_object_status_management_c,
        fstr_is_active_c,
        fstr_number_of_top_level_reevaluation_steps_c,
        fstr_object_display_name_c,
        fstr_object_name_c,
        fstr_object_record_type_c,
        fstr_object_record_type_name_c,
        fstr_po_propagation_status_c,
        fstr_so_propagation_status_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
