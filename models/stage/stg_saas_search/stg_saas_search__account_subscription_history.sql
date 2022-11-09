
with source as (

    select * from {{ source('raw_saas_search', 'account_subscription_history') }}

),

renamed as (

    select
        id,
        plan,
        usd_cents_per_month,
        billing_interval,
        starting_at,
        ending_at,
        partition_date

    from source

)

select * from renamed
