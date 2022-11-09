
with source as (

    select * from {{ source('raw_salesforce', 'support_engineer_load_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        support_engineer_c,
        system_modstamp,
        time_zone_c,
        user_created_date_c,
        backup_count_c,
        engineer_c,
        last_30_days_tickets_c,
        lead_count_c,
        temp_backup_count_c,
        temp_lead_count_c,
        is_dev_user_c,
        load_c,
        profile_c,
        slack_user_name_c

    from source

)

select * from renamed
