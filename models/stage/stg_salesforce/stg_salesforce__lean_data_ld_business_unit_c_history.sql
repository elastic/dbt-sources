
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_ld_business_unit_c_history') }}

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
        system_modstamp,
        lean_data_account_routing_deployment_c,
        lean_data_case_routing_deployment_c,
        lean_data_contact_routing_deployment_c,
        lean_data_is_default_c,
        lean_data_is_deleted_c,
        lean_data_lead_routing_deployment_c,
        lean_data_opportunity_routing_deployment_c

    from source

)

select * from renamed
