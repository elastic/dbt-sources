
with source as (

    select * from {{ source('raw_cloud_marketplace', 'rollup_billing_usage_detail') }}

),

renamed as (

    select
        usage_start_time_date_histogram_interval,
        user_domain_terms_value,
        usage_base_cost_sum_value,
        usage_gross_cost_sum_value,
        user_tier_terms_count,
        usage_start_time_date_histogram_timestamp,
        usage_net_cost_sum_value,
        user_id_terms_value,
        user_domain_terms_count,
        user_id_terms_count,
        user_tier_terms_value,
        usage_start_time_date_histogram_time_zone,
        usage_start_time_date_histogram_count

    from source

)

select * from renamed
