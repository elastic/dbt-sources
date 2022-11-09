
with source as (

    select * from {{ source('raw_netsuite_sa', 'payroll_items_history') }}

),

renamed as (

    select
        payroll_item_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        derived_from_payroll_item_id,
        derived_rate_multiplier,
        expense_account,
        isinactive,
        liability_account,
        limit_0,
        locality,
        name,
        payroll_item_type_id,
        rate,
        state,
        tax_number,
        vendor_id,
        w2_code,
        partition_date

    from source

)

select * from renamed
