
with source as (

    select * from {{ source('raw_salesforce', 'pse_advanced_settings_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        name,
        pse_force_rpgpr_time_period_update_c,
        pse_force_synchronous_execution_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
