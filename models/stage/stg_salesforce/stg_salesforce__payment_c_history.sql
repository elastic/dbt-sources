
with source as (

    select * from {{ source('raw_salesforce', 'payment_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        applied_c,
        auto_apply_c,
        balance_c,
        charge_it_c,
        check_num_c,
        created_by_id,
        created_date,
        currency_iso_code,
        currency_name_c,
        customer_c,
        debit_card_issue_no_c,
        exchange_rate_c,
        individual_c,
        internal_id_c,
        invoice_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        memo_c,
        name,
        ns_last_modified_date_c,
        owner_id,
        payment_c,
        pending_c,
        pn_ref_num_c,
        status_c,
        system_modstamp,
        three_dstatus_code_c,
        total_c,
        tran_date_c,
        unapplied_c,
        undep_funds_c,
        valid_from_c

    from source

)

select * from renamed
