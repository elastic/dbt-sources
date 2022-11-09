
with source as (

    select * from {{ source('raw_netsuite', 'price_book_line_intervals') }}

),

renamed as (

    select
        charge_frequency_id,
        discount,
        is_discount_percentage,
        pbli_id,
        plan_line_id,
        plan_line_number,
        price_book_id,
        price_plan_id,
        repeat_every,
        start_offset,
        usage_multiplier_line_id

    from source

)

select * from renamed
