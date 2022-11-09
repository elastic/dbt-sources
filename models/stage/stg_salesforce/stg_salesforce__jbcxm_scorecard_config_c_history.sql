
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_scorecard_config_c_history') }}

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
        jbcxm_customer_rollup_c,
        jbcxm_history_tracking_frequency_c,
        jbcxm_is_history_enabled_c,
        jbcxm_override_customer_c,
        jbcxm_scorecard_enabled_c,
        jbcxm_track_history_c,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
