
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_subscription_consumption_rate_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_lower_bound_c,
        sbqq_price_c,
        sbqq_pricing_method_c,
        sbqq_processing_order_c,
        sbqq_subscription_consumption_schedule_c,
        system_modstamp,
        sbqq_description_c,
        sbqq_upper_bound_c

    from source

)

select * from renamed
