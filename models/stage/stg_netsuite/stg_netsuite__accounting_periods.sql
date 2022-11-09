
with source as (

    select * from {{ source('raw_netsuite', 'accounting_periods') }}

),

renamed as (

    select
        accounting_period_id,
        closed,
        closed_accounts_payable,
        closed_accounts_receivable,
        closed_all,
        closed_on,
        closed_payroll,
        date_last_modified,
        ending,
        fiscal_calendar_id,
        full_name,
        is_adjustment,
        isinactive,
        locked_accounts_payable,
        locked_accounts_receivable,
        locked_all,
        locked_payroll,
        name,
        parent_id,
        quarter,
        starting,
        year_0,
        year_id

    from source

)

select * from renamed
