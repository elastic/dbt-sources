
with source as (

    select * from {{ source('raw_salesforce', 'pse_billing_event_batch_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_account_c,
        pse_batch_key_c,
        pse_billing_event_calculation_c,
        pse_group_c,
        pse_is_released_c,
        pse_practice_c,
        pse_region_c,
        pse_summary_amount_c,
        pse_time_period_c,
        system_modstamp

    from source

)

select * from renamed
