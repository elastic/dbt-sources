
with source as (

    select * from {{ source('raw_salesforce', 'psa_cal_sync_psa_cal_sync_time_zones_c_history') }}

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
        psa_cal_sync_time_zone_code_c,
        psa_cal_sync_time_zone_name_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
