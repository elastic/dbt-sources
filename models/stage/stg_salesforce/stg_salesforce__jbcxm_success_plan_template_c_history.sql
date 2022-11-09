
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_success_plan_template_c_history') }}

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
        jbcxm_entity_type_c,
        jbcxm_objective_c,
        jbcxm_parent_c,
        jbcxm_playbook_c,
        jbcxm_relationship_type_c,
        jbcxm_success_plan_c,
        jbcxm_tasks_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
