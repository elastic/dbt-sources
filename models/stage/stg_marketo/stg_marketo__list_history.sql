
with source as (

    select * from {{ source('raw_marketo', 'list_history') }}

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
        workspace_name,
        partition_date

    from source

)

select * from renamed
