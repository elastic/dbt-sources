
with source as (

    select * from {{ source('raw_greenhouse', 'application_history') }}

),

renamed as (

    select
        application_id,
        updated_at,
        _fivetran_synced,
        new_stage_id,
        new_status,
        _fivetran_deleted,
        applied_at,
        candidate_id,
        credited_to_user_id,
        current_stage_id,
        id,
        is_deleted,
        last_activity_at,
        location_address,
        location_name,
        prospect,
        prospect_owner_id,
        prospect_pool_id,
        prospect_stage_id,
        rejected_at,
        rejected_reason_id,
        source_id,
        status

    from source

)

select * from renamed
