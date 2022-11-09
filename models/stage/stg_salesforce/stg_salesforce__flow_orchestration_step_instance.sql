
with source as (

    select * from {{ source('raw_salesforce', 'flow_orchestration_step_instance') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        label,
        last_modified_by_id,
        last_modified_date,
        name,
        orchestration_instance_id,
        stage_instance_id,
        status,
        step_type,
        system_modstamp

    from source

)

select * from renamed
