
with source as (

    select * from {{ source('raw_netsuite', 'bins') }}

),

renamed as (

    select
        bin_id,
        bin_number,
        external_id,
        is_inactive,
        location_id,
        memo

    from source

)

select * from renamed
