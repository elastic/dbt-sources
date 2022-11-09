
with source as (

    select * from {{ source('raw_salesforce', 'ns_customer_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_c,
        attention_c,
        billing_address_2_c,
        billing_city_c,
        billing_country_c,
        billing_state_c,
        billing_street_c,
        billing_zip_postal_code_c,
        channel_tier_c,
        company_name_c,
        contact_c,
        created_by_id,
        created_date,
        currency_iso_code,
        customer_id_c,
        description_c,
        elastic_subsidiary_c,
        email_c,
        fax_c,
        first_name_c,
        found_uid_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_name_c,
        last_referenced_date,
        last_viewed_date,
        location_c,
        middle_name_c,
        name,
        no_of_closed_opportunities_c,
        no_of_open_opportunities_c,
        ns_id_c,
        owner_id,
        phone_c,
        public_training_account_c,
        resync_c,
        service_contract_c,
        status_c,
        swiftype_account_id_c,
        system_modstamp,
        transaction_id_c,
        vat_number_c,
        found_customer_id_c,
        lock_address_c,
        swiftype_transaction_id_c,
        tr_number_c,
        account_id_c,
        account_shipping_country_c,
        account_shipping_street_c,
        account_type_c,
        netsuite_url_c,
        sales_rep_email_c,
        cloud_user_id_billing_override_c,
        contract_c

    from source

)

select * from renamed
