
with source as (

    select * from {{ source('raw_salesforce', 'entitlement_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_id,
        asset_id,
        business_hours_id,
        cases_per_entitlement,
        contract_line_item_id,
        created_by_id,
        created_date,
        currency_iso_code,
        end_date,
        is_deleted,
        is_per_incident,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        number_of_cases_c,
        remaining_cases,
        service_contract_id,
        sla_process_id,
        start_date,
        status,
        support_level_c,
        system_modstamp,
        type,
        is_federal_c,
        number_of_contacts_c,
        sbqqsc_usage_end_date_c,
        contract_c,
        location_id

    from source

)

select * from renamed
