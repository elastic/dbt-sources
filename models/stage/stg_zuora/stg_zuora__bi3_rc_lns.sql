
with source as (

    select * from {{ source('raw_zuora', 'bi3_rc_lns') }}

),

renamed as (

    select

    from source

)

select * from renamed
