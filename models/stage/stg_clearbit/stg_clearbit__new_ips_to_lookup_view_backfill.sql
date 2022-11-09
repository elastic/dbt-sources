
with source as (

    select * from {{ source('raw_clearbit', 'new_ips_to_lookup_view_backfill') }}

),

renamed as (

    select
        ip,
        isipv6

    from source

)

select * from renamed
