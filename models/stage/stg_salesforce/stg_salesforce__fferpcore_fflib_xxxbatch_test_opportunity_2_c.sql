
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_fflib_xxxbatch_test_opportunity_2_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_account_c,
        fferpcore_batch_process_c,
        fferpcore_description_c,
        fferpcore_forecast_category_name_c,
        fferpcore_next_step_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
