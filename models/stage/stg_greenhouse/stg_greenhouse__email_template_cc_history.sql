
with source as (

    select * from {{ source('raw_greenhouse', 'email_template_cc_history') }}

),

renamed as (

    select
        email_id,
        email_template_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
