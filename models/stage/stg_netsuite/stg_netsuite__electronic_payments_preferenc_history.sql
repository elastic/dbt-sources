
with source as (

    select * from {{ source('raw_netsuite', 'electronic_payments_preferenc_history') }}

),

renamed as (

    select
        date_created,
        eft_payment_batch_approval_ro,
        electronic_payments_prefere_ex,
        electronic_payments_prefere_id,
        email_template_for_customer_p,
        email_template_for_vendor_pay,
        include_name_in_transaction_l,
        is_inactive,
        last_modified_date,
        last_updated,
        license_key,
        parent_id,
        queue_settings

    from source

)

select * from renamed
