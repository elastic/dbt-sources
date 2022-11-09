
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_payment_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        contact_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        learndot_amount_c,
        learndot_city_c,
        learndot_country_alpha_2_code_c,
        learndot_country_name_c,
        learndot_credit_card_type_c,
        learndot_currency_c,
        learndot_date_c,
        learndot_email_c,
        learndot_failure_message_c,
        learndot_first_name_c,
        learndot_id_c,
        learndot_last_name_c,
        learndot_learndot_modified_c,
        learndot_number_c,
        learndot_organization_c,
        learndot_phone_c,
        learndot_postal_code_c,
        learndot_region_c,
        learndot_status_c,
        learndot_street_1_c,
        learndot_street_2_c,
        learndot_tax_id_c,
        learndot_taxcountry_alpha_2_code_c,
        learndot_training_credit_account_c,
        learndot_training_credits_c,
        learndot_transaction_id_c,
        learndot_type_c,
        learndot_value_amount_c,
        learndot_value_currency_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
