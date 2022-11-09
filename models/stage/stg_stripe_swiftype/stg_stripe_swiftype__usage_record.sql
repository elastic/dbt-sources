
with source as (

    select * from {{ source('raw_stripe_swiftype', 'usage_record') }}

),

renamed as (

    select
        id,
        subscription_item_id,
        _fivetran_synced,
        invoice_id,
        livemode,
        period_end,
        period_start,
        timestamp,
        total_usage

    from source

)

select * from renamed
