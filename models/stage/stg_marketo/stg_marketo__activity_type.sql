
with source as (

    select * from {{ source('raw_marketo', 'activity_type') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        description,
        name

    from source

)

select * from renamed
