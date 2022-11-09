
with source as (

    select * from {{ source('raw_salesforce', 'macro_usage') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        app_context,
        condition_count,
        context_record,
        created_by_id,
        created_date,
        currency_iso_code,
        duration_in_ms,
        executed_instruction_count,
        execution_end_time,
        execution_state,
        failure_reason,
        instruction_count,
        is_deleted,
        is_from_bulk,
        last_modified_by_id,
        last_modified_date,
        macro_id,
        name,
        owner_id,
        system_modstamp,
        user_id

    from source

)

select * from renamed
