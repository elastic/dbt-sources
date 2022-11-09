
with source as (

    select * from {{ source('raw_netsuite', 'subscription_co_lines_history') }}

),

renamed as (

    select
        change_order_action_id,
        change_order_id,
        discount,
        plan_item_id,
        price_plan_id,
        quantity,
        status_id,
        subscription_id,
        subscription_line_id,
        is_discount_percentage,
        recurring_amount

    from source

)

select * from renamed
