
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_fflib_xxxbatch_test_opportunity_2_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_account_c,
        ffirule_batch_process_c,
        ffirule_description_c,
        ffirule_forecast_category_name_c,
        ffirule_next_step_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
