
with source as (

    select * from {{ source('raw_netsuite_sa', 'consolidated_exchange_rates') }}

),

renamed as (

    select
        consolidated_exchange_rate_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        accounting_period_id,
        average_budget_rate,
        average_rate,
        current_budget_rate,
        current_rate,
        date_deleted,
        from_subsidiary_id,
        historical_budget_rate,
        historical_rate,
        to_subsidiary_id

    from source

)

select * from renamed
