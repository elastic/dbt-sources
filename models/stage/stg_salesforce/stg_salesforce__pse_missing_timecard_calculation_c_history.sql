
with source as (

    select * from {{ source('raw_salesforce', 'pse_missing_timecard_calculation_c_history') }}

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
        owner_id,
        pse_batch_id_c,
        pse_configuration_c,
        pse_date_type_c,
        pse_group_c,
        pse_include_sublevels_c,
        pse_practice_c,
        pse_region_c,
        pse_week_end_date_c,
        pse_week_start_date_c,
        system_modstamp

    from source

)

select * from renamed
