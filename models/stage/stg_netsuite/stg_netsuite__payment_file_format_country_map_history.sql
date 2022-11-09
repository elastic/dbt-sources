
with source as (

    select * from {{ source('raw_netsuite', 'payment_file_format_country_map_history') }}

),

renamed as (

    select
        country_id,
        payment_file_format_id

    from source

)

select * from renamed
