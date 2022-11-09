
with source as (

    select * from {{ source('raw_netsuite', 'billing_subscriptions_history') }}

),

renamed as (

    select
        advance_renewal_period_number,
        advance_renewal_period_unit_id,
        amount,
        billing_account_id,
        currency,
        date_created,
        date_end,
        date_estimated_revrec_end,
        date_last_modified,
        date_start,
        default_renewal_method_id,
        default_renewal_plan_id,
        default_renewal_price_book_id,
        default_renewal_term_id,
        default_renewal_trantype_id,
        description,
        initial_term_id,
        is_auto_renewal,
        name,
        plan_id,
        price_book_id,
        sales_order_id,
        subscription_extid,
        subscription_id,
        subscription_number

    from source

)

select * from renamed
