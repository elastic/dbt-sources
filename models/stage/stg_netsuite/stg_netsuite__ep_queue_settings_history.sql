
with source as (

    select * from {{ source('raw_netsuite', 'ep_queue_settings_history') }}

),

renamed as (

    select
        bank_file_creation_new,
        batch_processing_deployment_o,
        date_created,
        default_0,
        ep_preference_id,
        ep_queue_settings_extid,
        ep_queue_settings_id,
        instant_payment_processing_ne,
        is_inactive,
        last_modified_date,
        notification_deployment_old,
        notification_new,
        parent_deployment_old,
        parent_id,
        payment_creator_deployment_ol,
        payment_processing_new,
        remove_unprocessed_transactio,
        reversal_deployment_old,
        reversal_new,
        rollback_deployment_old,
        rollback_new,
        scheduler_new,
        transaction_marking_new

    from source

)

select * from renamed
