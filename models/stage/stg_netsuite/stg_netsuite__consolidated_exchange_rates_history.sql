
with source as (

    select * from {{ source('raw_netsuite', 'consolidated_exchange_rates_history') }}

),

renamed as (

    select
        accounting_book_id,
        accounting_period_id,
        average_budget_rate,
        average_rate,
        consolidated_exchange_rate_id,
        current_budget_rate,
        current_rate,
        from_subsidiary_id,
        historical_budget_rate,
        historical_rate,
        to_subsidiary_id

    from source

)

select * from renamed
