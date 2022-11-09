
with source as (

    select * from {{ source('raw_greenhouse', 'degree') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        name,
        priority

    from source

)

select * from renamed
