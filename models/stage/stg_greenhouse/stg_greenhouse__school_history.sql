
with source as (

    select * from {{ source('raw_greenhouse', 'school_history') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        name,
        priority,
        partition_date

    from source

)

select * from renamed
