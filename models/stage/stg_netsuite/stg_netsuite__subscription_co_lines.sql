
with source as (

    select * from {{ source('raw_netsuite', 'subscription_co_lines') }}

),

renamed as (

    select
        change_order_action_id,
        change_order_id,
        discount,
        is_discount_percentage,
        plan_item_id,
        price_plan_id,
        quantity,
        recurring_amount,
        status_id,
        subscription_id,
        subscription_line_id

    from source

)

select * from renamed
