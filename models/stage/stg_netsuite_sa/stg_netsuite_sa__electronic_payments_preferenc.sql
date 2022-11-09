
with source as (

    select * from {{ source('raw_netsuite_sa', 'electronic_payments_preferenc') }}

),

renamed as (

    select
        electronic_payments_prefere_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        eft_payment_batch_approval_ro,
        electronic_payments_prefere_ex,
        email_template_for_customer_p,
        email_template_for_vendor_pay,
        include_name_in_transaction_l,
        is_inactive,
        last_modified_date,
        parent_id,
        queue_settings,
        apply_nacha_rules,
        aggregate_by_payeedd,
        aggregate_by_payeebatch,
        aggregate_by_payeeeft

    from source

)

select * from renamed
