
with source as (

    select * from {{ source('raw_netsuite', 'states') }}

),

renamed as (

    select
        country_id,
        name,
        short_name,
        state_id

    from source

)

select * from renamed
