
with source as (

    select * from {{ source('raw_greenhouse', 'scorecard_history') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        application_id,
        candidate_id,
        created_at,
        interview,
        interviewed_at,
        overall_recommendation,
        submitted_at,
        updated_at,
        submitted_by_user_id,
        partition_date

    from source

)

select * from renamed
