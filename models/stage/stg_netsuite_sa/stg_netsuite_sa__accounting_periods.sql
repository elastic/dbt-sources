
with source as (

    select * from {{ source('raw_netsuite_sa', 'accounting_periods') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_synced,
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
        year_id,
        fivetran_index,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
