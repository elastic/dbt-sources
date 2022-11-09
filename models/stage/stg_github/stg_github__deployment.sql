
with source as (

    select * from {{ source('raw_github', 'deployment') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        commit_sha,
        created_at,
        creator_id,
        description,
        environment,
        original_environment,
        production_environment,
        ref,
        task,
        transient_environment,
        updated_at

    from source

)

select * from renamed
