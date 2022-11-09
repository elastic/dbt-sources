
with source as (

    select * from {{ source('raw_netsuite', 'subscript_line_price_intervals') }}

),

renamed as (

    select
        charge_frequency_id,
        date_end_exclusive,
        date_start_inclusive,
        discount,
        included_quantity,
        is_discount_percentage,
        plan_line_id,
        plan_line_number,
        price_plan_id,
        quantity,
        repeat_every,
        status_id,
        subscription_line_id

    from source

)

select * from renamed
