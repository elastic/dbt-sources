
with source as (

    select * from {{ source('raw_salesforce', 'background_operation') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        error,
        execution_group,
        expires_at,
        finished_at,
        group_leader_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        num_followers,
        parent_key,
        process_after,
        retry_backoff,
        retry_count,
        retry_limit,
        sequence_group,
        sequence_number,
        started_at,
        status,
        submitted_at,
        system_modstamp,
        timeout,
        worker_uri,
        type

    from source

)

select * from renamed
