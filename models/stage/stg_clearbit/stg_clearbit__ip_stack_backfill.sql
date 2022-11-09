
with source as (

    select * from {{ source('raw_clearbit', 'ip_stack_backfill') }}

),

renamed as (

    select
        ip,
        hostname,
        connection_isp

    from source

)

select * from renamed
