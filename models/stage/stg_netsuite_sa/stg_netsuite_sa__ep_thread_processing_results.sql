
with source as (

    select * from {{ source('raw_netsuite_sa', 'ep_thread_processing_results') }}

),

renamed as (

    select
        ep_thread_processing_result_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        ep_thread_processing_result_ex,
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
