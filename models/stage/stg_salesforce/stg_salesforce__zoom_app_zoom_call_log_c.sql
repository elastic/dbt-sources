
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_call_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        zoom_app_call_end_time_c,
        zoom_app_call_id_c,
        zoom_app_calllog_status_c,
        zoom_app_signal_status_c,
        zoom_app_callee_extension_number_c,
        zoom_app_ring_start_time_c,
        zoom_app_caller_phone_number_c,
        zoom_app_disposition_c,
        zoom_app_calllog_unique_id_c,
        zoom_app_caller_extension_number_c,
        zoom_app_callee_phone_number_c,
        zoom_app_call_duration_c,
        zoom_app_answer_start_time_c,
        zoom_app_is_external_c,
        zoom_app_call_level_type_c,
        zoom_app_third_party_number_c

    from source

)

select * from renamed
