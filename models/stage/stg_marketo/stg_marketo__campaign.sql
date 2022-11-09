
with source as (

    select * from {{ source('raw_marketo', 'campaign') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        created_at,
        description,
        name,
        program_id,
        program_name,
        type,
        updated_at,
        workspace_name,
        _fivetran_deleted

    from source

)

select * from renamed
