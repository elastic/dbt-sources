
with source as (

    select * from {{ source('raw_greenhouse', 'tag') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        name

    from source

)

select * from renamed
