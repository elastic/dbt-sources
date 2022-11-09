
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_subscription_frequency_c_history') }}

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
        jbcxm_daily_c,
        jbcxm_never_c,
        jbcxm_real_time_c,
        jbcxm_user_id_c,
        jbcxm_weekly_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
