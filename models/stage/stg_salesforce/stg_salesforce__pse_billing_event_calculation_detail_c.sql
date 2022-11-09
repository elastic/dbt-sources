
with source as (

    select * from {{ source('raw_salesforce', 'pse_billing_event_calculation_detail_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_account_c,
        pse_billing_event_calculation_c,
        pse_group_c,
        pse_practice_c,
        pse_project_c,
        pse_region_c,
        system_modstamp

    from source

)

select * from renamed
