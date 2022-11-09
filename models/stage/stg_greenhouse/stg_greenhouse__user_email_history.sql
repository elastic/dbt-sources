
with source as (

    select * from {{ source('raw_greenhouse', 'user_email_history') }}

),

renamed as (

    select
        email,
        user_id,
        _fivetran_synced,
        is_primary,
        partition_date

    from source

)

select * from renamed
