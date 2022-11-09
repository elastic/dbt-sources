
with source as (

    select * from {{ source('raw_netsuite', 'payment_batch') }}

),

renamed as (

    select
        account_id,
        aggregate,
        aggregate_method,
        approval_level_id,
        bank_account_id,
        batch_details_id,
        batch_number,
        batch_total,
        date_created,
        date_processed,
        date_to_be_processed,
        eft_note_reference,
        is_inactive,
        journal_keys,
        last_modified_date,
        parent_id,
        payment_batch_extid,
        payment_batch_id,
        payment_type_id,
        posting_period_id,
        removed_keys,
        status_id,
        subsidiary_id,
        timestamp_0,
        total_transactions,
        transactions,
        transaction_amounts

    from source

)

select * from renamed
