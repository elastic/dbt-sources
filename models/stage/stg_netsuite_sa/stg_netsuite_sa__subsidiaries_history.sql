
with source as (

    select * from {{ source('raw_netsuite_sa', 'subsidiaries_history') }}

),

renamed as (

    select
        subsidiary_id,
        _fivetran_synced,
        address,
        address1,
        address2,
        base_currency_id,
        branch_id,
        brn,
        city,
        country,
        date_last_modified,
        edition,
        federal_number,
        fiscal_calendar_id,
        full_name,
        invoice_footer_disclaimer,
        is_elimination,
        is_moss,
        isinactive,
        isinactive_bool,
        legal_name,
        moss_nexus_id,
        name,
        parent_id,
        payment_info,
        purchaseorderamount,
        purchaseorderquantity,
        purchaseorderquantitydiff,
        receiptamount,
        receiptquantity,
        receiptquantitydiff,
        return_address,
        return_address1,
        return_address2,
        return_city,
        return_country,
        return_state,
        return_zipcode,
        shipping_address,
        shipping_address1,
        shipping_address2,
        shipping_city,
        shipping_country,
        shipping_state,
        shipping_zipcode,
        state,
        state_tax_number,
        subsidiary_extid,
        subsidiary_vat_number,
        taxonomy_reference_id,
        tran_num_prefix,
        uen,
        url,
        zipcode,
        _fivetran_deleted,
        date_deleted,
        licensing_client_test_mode,
        invoice_title,
        partition_date

    from source

)

select * from renamed
