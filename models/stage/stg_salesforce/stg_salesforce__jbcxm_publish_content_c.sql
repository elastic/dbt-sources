
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_publish_content_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_id_c,
        jbcxm_app_event_id_c,
        jbcxm_event_timestamp_c,
        jbcxm_message_content_c,
        jbcxm_record_id_c,
        jbcxm_user_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
