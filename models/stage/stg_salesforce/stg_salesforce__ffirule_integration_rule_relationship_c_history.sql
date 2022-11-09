
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_relationship_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_integration_rule_c,
        ffirule_relationship_integration_rule_c,
        ffirule_relationship_name_c,
        ffirule_relationship_source_object_c,
        ffirule_relationship_target_field_c,
        ffirule_relationship_target_object_c,
        ffirule_source_relationship_field_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
