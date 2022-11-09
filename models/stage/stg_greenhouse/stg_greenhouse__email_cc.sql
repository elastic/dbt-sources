
with source as (

    select * from {{ source('raw_greenhouse', 'email_cc') }}

),

renamed as (

    select
        cc_email,
        email_id,
        _fivetran_synced

    from source

)

select * from renamed
