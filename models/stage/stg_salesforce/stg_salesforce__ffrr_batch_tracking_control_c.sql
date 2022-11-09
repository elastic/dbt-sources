
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_batch_tracking_control_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_action_c,
        ffrr_batch_id_c,
        ffrr_error_message_c,
        ffrr_group_name_c,
        ffrr_jobs_processed_c,
        ffrr_recognition_date_c,
        ffrr_records_processed_c,
        ffrr_status_c,
        ffrr_total_jobs_c,
        ffrr_total_records_c,
        ffrr_transaction_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
