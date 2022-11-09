
with source as (

    select * from {{ source('raw_salesforce', 'pse_revenue_forecast_batch_lock_c_history') }}

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
        owner_id,
        pse_project_id_c,
        system_modstamp,
        pse_record_id_c

    from source

)

select * from renamed
