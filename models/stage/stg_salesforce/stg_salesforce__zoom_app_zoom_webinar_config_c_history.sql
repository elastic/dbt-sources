
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_webinar_config_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        zoom_app_add_registrants_as_campaign_members_c,
        zoom_app_create_campaign_for_each_webinar_c,
        zoom_app_create_new_lead_c,
        zoom_app_syn_webinar_job_schedule_id_c,
        zoom_app_sync_webinar_c

    from source

)

select * from renamed
