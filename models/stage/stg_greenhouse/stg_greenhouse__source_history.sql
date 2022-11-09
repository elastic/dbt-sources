
with source as (

    select * from {{ source('raw_greenhouse', 'source_history') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        name,
        source_type_id,
        source_type_name,
        partition_date

    from source

)

select * from renamed
