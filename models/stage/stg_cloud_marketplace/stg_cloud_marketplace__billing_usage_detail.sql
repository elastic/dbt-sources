
with source as (

    select * from {{ source('raw_cloud_marketplace', 'billing_usage_detail') }}

),

renamed as (

    select
        user_id,
        user_tier,
        user_domain,
        usage_type,
        usage_count,
        usage_base_cost,
        usage_gross_cost,
        usage_net_cost,
        usage_range_gte,
        usage_range_lt,
        usage_start_time,
        usage_reported,
        product_id,
        product_price

    from source

)

select * from renamed
