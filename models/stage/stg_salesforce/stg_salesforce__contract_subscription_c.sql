
with source as (

    select * from {{ source('raw_salesforce', 'contract_subscription_c') }}

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
        service_contract_c,
        subscription_c,
        system_modstamp,
        contract_c,
        license_type_c,
        contract_status_c,
        contract_sub_unique_key_c,
        support_level_c,
        quote_c,
        number_of_nodes_c,
        start_date_c,
        opportunity_c,
        order_c,
        end_date_c,
        last_viewed_date,
        last_referenced_date,
        contract_subscription_id_c

    from source

)

select * from renamed
