
with source as (

    select * from {{ source('raw_salesforce', 'contract_subscription_c_history') }}

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
        service_contract_c,
        subscription_c,
        system_modstamp,
        contract_c,
        contract_status_c,
        contract_sub_unique_key_c,
        end_date_c,
        license_type_c,
        number_of_nodes_c,
        opportunity_c,
        order_c,
        quote_c,
        start_date_c,
        support_level_c,
        last_referenced_date,
        last_viewed_date,
        contract_subscription_id_c

    from source

)

select * from renamed
