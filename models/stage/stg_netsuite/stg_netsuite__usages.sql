
with source as (

    select * from {{ source('raw_netsuite', 'usages') }}

),

renamed as (

    select
        date_usage,
        usage_customer_id,
        usage_extid,
        usage_id,
        usage_item_id,
        usage_memo,
        usage_quantity,
        usage_subscription_id,
        usage_subscription_line_id,
        usage_subscription_plan_id

    from source

)

select * from renamed
