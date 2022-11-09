
with source as (

    select * from {{ source('raw_salesforce', 'flow_orchestration_work_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        assignee_id,
        created_by_id,
        created_date,
        description,
        is_deleted,
        label,
        last_modified_by_id,
        last_modified_date,
        name,
        related_record_id,
        screen_flow,
        screen_flow_inputs,
        status,
        step_instance_id,
        system_modstamp

    from source

)

select * from renamed
