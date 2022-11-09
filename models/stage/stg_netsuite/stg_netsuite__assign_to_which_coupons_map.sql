
with source as (

    select * from {{ source('raw_netsuite', 'assign_to_which_coupons_map') }}

),

renamed as (

    select
        assign_to_which_coupons_id,
        item_id

    from source

)

select * from renamed
