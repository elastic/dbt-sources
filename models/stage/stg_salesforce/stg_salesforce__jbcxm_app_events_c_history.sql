
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_app_events_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        jbcxm_app_event_field_c,
        jbcxm_app_event_group_name_c,
        jbcxm_app_event_object_c,
        jbcxm_format_text_c,
        jbcxm_handler_class_c,
        jbcxm_is_account_based_c,
        jbcxm_uid_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
