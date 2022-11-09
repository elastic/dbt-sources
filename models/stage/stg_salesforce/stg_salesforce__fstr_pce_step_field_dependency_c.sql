
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_step_field_dependency_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_child_object_name_c,
        fstr_child_object_relationship_field_c,
        fstr_child_parent_relationship_1_c,
        fstr_child_parent_relationship_2_c,
        fstr_child_parent_relationship_3_c,
        fstr_child_parent_relationship_4_c,
        fstr_child_parent_relationship_5_c,
        fstr_data_type_c,
        fstr_drill_down_count_c,
        fstr_drill_down_count_operator_c,
        fstr_drill_down_operator_c,
        fstr_field_name_c,
        fstr_field_value_c,
        fstr_joining_operator_c,
        fstr_object_name_c,
        fstr_operator_c,
        fstr_parent_relationship_1_c,
        fstr_parent_relationship_2_c,
        fstr_parent_relationship_3_c,
        fstr_parent_relationship_4_c,
        fstr_parent_relationship_5_c,
        fstr_related_list_filter_field_name_c,
        fstr_step_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
