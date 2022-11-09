
with source as (

    select * from {{ source('raw_marketo', 'list') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_at,
        description,
        name,
        program_name,
        updated_at,
        workspace_name

    from source

)

select * from renamed
