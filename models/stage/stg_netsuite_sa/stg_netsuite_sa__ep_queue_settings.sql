
with source as (

    select * from {{ source('raw_netsuite_sa', 'ep_queue_settings') }}

),

renamed as (

    select
        ep_queue_settings_id,
        _fivetran_deleted,
        _fivetran_synced,
        bank_file_creation_new,
        batch_processing_deployment_o,
        date_created,
        date_deleted,
        default_0,
        ep_preference_id,
        ep_queue_settings_extid,
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
