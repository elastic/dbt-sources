
with source as (

    select * from {{ source('raw_recurly', 'plan_history') }}

),

renamed as (

    select
        id,
        updated_at,
        _fivetran_synced,
        accounting_code,
        auto_renew,
        code,
        created_at,
        deleted_at,
        description,
        hosted_pages_bypass_confirmation,
        hosted_pages_cancel_url,
        hosted_pages_display_quantity,
        hosted_pages_success_url,
        interval_length,
        interval_unit,
        name,
        setup_fee_accounting_code,
        state,
        tax_code,
        tax_exempt,
        total_billing_cycles,
        trial_length,
        trial_unit

    from source

)

select * from renamed
