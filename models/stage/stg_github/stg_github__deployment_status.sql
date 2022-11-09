
with source as (

    select * from {{ source('raw_github', 'deployment_status') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_at,
        creator_id,
        deployment_id,
        description,
        environment,
        state,
        updated_at

    from source

)

select * from renamed
