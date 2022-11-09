
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_error_log_line_item_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_message_c,
        ffrr_revenue_recognition_error_log_c,
        ffrr_source_record_id_c,
        ffrr_source_record_name_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        ffrr_process_c,
        ffrr_record_c

    from source

)

select * from renamed
