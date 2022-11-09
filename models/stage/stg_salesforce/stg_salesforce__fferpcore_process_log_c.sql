
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_process_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_async_apex_job_id_c,
        fferpcore_grouping_key_c,
        fferpcore_message_c,
        fferpcore_parent_process_run_c,
        fferpcore_process_run_c,
        fferpcore_process_user_group_c,
        fferpcore_record_id_c,
        fferpcore_related_record_c,
        fferpcore_related_record_id_c,
        fferpcore_status_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        fferpcore_query_locator_result_ordering_sequence_c

    from source

)

select * from renamed
