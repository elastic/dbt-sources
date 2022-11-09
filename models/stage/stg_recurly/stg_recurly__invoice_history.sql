
with source as (

    select * from {{ source('raw_recurly', 'invoice_history') }}

),

renamed as (

    select
        id,
        updated_at,
        _fivetran_synced,
        account_id,
        balance,
        closed_at,
        collection_method,
        created_at,
        currency,
        customer_notes,
        discount,
        due_at,
        invoice_city,
        invoice_country,
        invoice_first_name,
        invoice_last_name,
        invoice_name_on_account,
        invoice_phone,
        invoice_postal_code,
        invoice_region,
        invoice_street_1,
        invoice_street_2,
        net_terms,
        number,
        origin,
        paid,
        po_number,
        previous_invoice_id,
        refundable_amount,
        state,
        subtotal,
        tax,
        tax_rate,
        tax_region,
        tax_type,
        terms_and_conditions,
        total,
        type,
        vat_reverse_charge_notes

    from source

)

select * from renamed
