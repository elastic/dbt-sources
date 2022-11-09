
with source as (

    select * from {{ source('raw_greenhouse', 'application') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        applied_at,
        candidate_id,
        credited_to_user_id,
        current_stage_id,
        is_deleted,
        last_activity_at,
        location_name,
        prospect,
        prospect_owner_id,
        prospect_pool_id,
        prospect_stage_id,
        rejected_at,
        rejected_reason_id,
        source_id,
        status,
        location_address,
        job_post_id

    from source

)

select * from renamed
