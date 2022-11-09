
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_usage_rate_card_c') }}

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
        owner_id,
        sbqq_attribute_field_c,
        sbqq_billing_frequency_c,
        sbqq_description_c,
        sbqq_original_usage_rate_card_c,
        sbqq_quote_line_c,
        sbqq_subscription_c,
        sbqq_template_rate_card_c,
        sbqq_type_c,
        sbqqsc_contract_line_item_c,
        system_modstamp

    from source

)

select * from renamed
