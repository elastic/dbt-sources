
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_callout_error_queue_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_email_c,
        fstr_error_text_c,
        fstr_retry_count_c,
        fstr_web_service_callout_body_c,
        fstr_web_service_callout_headers_c,
        fstr_web_service_callout_method_c,
        fstr_web_service_callout_url_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
