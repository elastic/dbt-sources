
with source as (

    select * from {{ source('raw_saas_search', 'app_search_account_subscription') }}

),

renamed as (

    select
        id,
        plan,
        usd_cents_per_month,
        billing_interval,
        starting_at,
        ending_at

    from source

)

select * from renamed
