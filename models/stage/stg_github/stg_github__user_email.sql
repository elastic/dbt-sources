
with source as (

    select * from {{ source('raw_github', 'user_email') }}

),

renamed as (

    select
        email,
        _fivetran_synced,
        name,
        user_id

    from source

)

select * from renamed
