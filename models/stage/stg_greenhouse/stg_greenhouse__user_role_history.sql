
with source as (

    select * from {{ source('raw_greenhouse', 'user_role_history') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        name,
        type,
        partition_date

    from source

)

select * from renamed
