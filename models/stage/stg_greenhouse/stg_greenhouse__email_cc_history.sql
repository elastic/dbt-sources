
with source as (

    select * from {{ source('raw_greenhouse', 'email_cc_history') }}

),

renamed as (

    select
        cc_email,
        email_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
