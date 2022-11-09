
with source as (

    select * from {{ source('raw_netsuite', 'pricing_groups') }}

),

renamed as (

    select
        name,
        pricing_group_id

    from source

)

select * from renamed
