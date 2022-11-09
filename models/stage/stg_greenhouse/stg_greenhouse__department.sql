
with source as (

    select * from {{ source('raw_greenhouse', 'department') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        external_id,
        name,
        parent_id

    from source

)

select * from renamed
