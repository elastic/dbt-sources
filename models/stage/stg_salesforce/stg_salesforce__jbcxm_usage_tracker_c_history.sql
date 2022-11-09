
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_usage_tracker_c_history') }}

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
        jbcxm_account_c,
        jbcxm_action_time_c,
        jbcxm_adoption_measure_c,
        jbcxm_browser_c,
        jbcxm_browser_resolutoin_c,
        jbcxm_comments_c,
        jbcxm_device_c,
        jbcxm_ipaddress_c,
        jbcxm_module_c,
        jbcxm_user_name_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
