
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_attribution_configuration_c') }}

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
        lean_data_last_run_date_c,
        name,
        setup_owner_id,
        system_modstamp,
        lean_data_campaign_batch_has_errors_c

    from source

)

select * from renamed
