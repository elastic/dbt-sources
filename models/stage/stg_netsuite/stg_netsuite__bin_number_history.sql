
with source as (

    select * from {{ source('raw_netsuite', 'bin_number_history') }}

),

renamed as (

    select
        bin_id,
        bin_number,
        bin_number_extid,
        isinactive,
        ispreferred,
        item_id,
        location_id,
        memo,
        on_hand_count

    from source

)

select * from renamed
