
with source as (

    select * from {{ source('raw_netsuite', 'bin_number_counts') }}

),

renamed as (

    select
        available_count,
        bin_id,
        bin_number,
        item_id,
        location_id,
        on_hand_count

    from source

)

select * from renamed
