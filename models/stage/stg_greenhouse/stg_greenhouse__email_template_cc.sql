
with source as (

    select * from {{ source('raw_greenhouse', 'email_template_cc') }}

),

renamed as (

    select
        email_id,
        email_template_id,
        _fivetran_synced

    from source

)

select * from renamed
