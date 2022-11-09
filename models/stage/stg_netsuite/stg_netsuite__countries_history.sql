
with source as (

    select * from {{ source('raw_netsuite', 'countries_history') }}

),

renamed as (

    select
        country_id,
        name,
        short_name

    from source

)

select * from renamed
