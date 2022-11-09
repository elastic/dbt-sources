
with source as (

    select * from {{ source('raw_salesforce', 'pse_fflib_xxxbatch_test_opportunity_2_c') }}

),

renamed as (

    select
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
        pse_account_c,
        pse_batch_process_c,
        pse_description_c,
        pse_forecast_category_name_c,
        pse_next_step_c,
        system_modstamp

    from source

)

select * from renamed
