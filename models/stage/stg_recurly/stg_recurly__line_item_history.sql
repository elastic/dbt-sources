
with source as (

    select * from {{ source('raw_recurly', 'line_item_history') }}

),

renamed as (

    select
        id,
        updated_at,
        _fivetran_synced,
        account_id,
        accounting_code,
        add_on_code,
        add_on_id,
        amount,
        created_at,
        credit_applied,
        credit_reason_code,
        currency,
        description,
        discount,
        end_date,
        invoice_id,
        invoice_number,
        legacy_category,
        origin,
        original_line_item_invoice_id,
        plan_code,
        plan_id,
        previous_line_item_id,
        product_code,
        proration_rate,
        quantity,
        refund,
        refunded_quantity,
        start_date,
        state,
        subscription_id,
        subtotal,
        tax,
        tax_code,
        tax_exempt,
        tax_rate,
        tax_region,
        tax_type,
        taxable,
        type,
        unit_amount,
        uuid

    from source

)

select * from renamed
