
with source as (

    select * from {{ source('raw_github', 'column') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_at,
        is_deleted,
        name,
        project_id,
        updated_at

    from source

)

select * from renamed
