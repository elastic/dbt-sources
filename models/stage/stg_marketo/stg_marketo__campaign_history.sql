
with source as (

    select * from {{ source('raw_marketo', 'campaign_history') }}

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
        partition_date

    from source

)

select * from renamed
