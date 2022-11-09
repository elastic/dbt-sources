
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_batch_history') }}

),

renamed as (

    select
        payment_batch_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        aggregate,
        aggregate_method,
        approval_level_id,
        bank_account_id,
        batch_details_id,
        batch_number,
        batch_total,
        date_created,
        date_deleted,
        date_processed,
        date_to_be_processed,
        eft_note_reference,
        is_inactive,
        journal_keys,
        last_modified_date,
        parent_id,
        payment_batch_extid,
        payment_type_id,
        posting_period_id,
        removed_keys,
        status_id,
        subsidiary_id,
        timestamp_0,
        total_transactions,
        transaction_amounts,
        transactions,
        partition_date

    from source

)

select * from renamed
