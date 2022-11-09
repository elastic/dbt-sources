
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_subscribed_quote_line_c_history') }}

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
        owner_id,
        sbqq_active_c,
        sbqq_asset_quote_line_c,
        sbqq_asset_quote_line_quantity_c,
        sbqq_quote_c,
        sbqq_subscription_base_price_c,
        sbqq_subscription_net_total_c,
        sbqq_subscription_quote_line_c,
        system_modstamp

    from source

)

select * from renamed
