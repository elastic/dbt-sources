
with source as (

    select * from {{ source('raw_greenhouse', 'user_email') }}

),

renamed as (

    select
        email,
        user_id,
        _fivetran_synced,
        is_primary

    from source

)

select * from renamed
