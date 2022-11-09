
with source as (

    select * from {{ source('raw_netsuite', 'ep_thread_processing_results') }}

),

renamed as (

    select
        date_created,
        ep_thread_processing_result_ex,
        ep_thread_processing_result_id,
        is_inactive,
        last_modified_date,
        last_updated,
        paid_transactions,
        parent_id,
        payment_file_id,
        thread_deployment_id,
        thread_state_id,
        thread_transaction_count,
        thread_transactions

    from source

)

select * from renamed
