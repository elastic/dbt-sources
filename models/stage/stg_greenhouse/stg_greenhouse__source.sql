
with source as (

    select * from {{ source('raw_greenhouse', 'source') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        name,
        source_type_id,
        source_type_name

    from source

)

select * from renamed
