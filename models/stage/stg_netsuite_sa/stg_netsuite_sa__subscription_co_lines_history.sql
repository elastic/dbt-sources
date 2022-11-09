
with source as (

    select * from {{ source('raw_netsuite_sa', 'subscription_co_lines_history') }}

),

renamed as (

    select
        fivetran_index,
        subscription_line_id,
        _fivetran_deleted,
        _fivetran_synced,
        change_order_action_id,
        change_order_id,
        date_deleted,
        discount,
        is_discount_percentage,
        plan_item_id,
        price_plan_id,
        quantity,
        recurring_amount,
        status_id,
        subscription_id,
        partition_date

    from source

)

select * from renamed
