
with source as (

    select * from {{ source('raw_salesforce', 'agent_work_skill') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        agent_work_id,
        created_by_id,
        created_date,
        currency_iso_code,
        is_additional_skill,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        skill_id,
        skill_level,
        skill_priority,
        system_modstamp,
        was_dropped

    from source

)

select * from renamed
