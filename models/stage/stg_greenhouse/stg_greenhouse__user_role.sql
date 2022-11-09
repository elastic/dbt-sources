
with source as (

    select * from {{ source('raw_greenhouse', 'user_role') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        name,
        type

    from source

)

select * from renamed
