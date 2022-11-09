
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_contracted_price_c_history') }}

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
        sbqq_account_c,
        sbqq_contract_c,
        sbqq_description_c,
        sbqq_discount_c,
        sbqq_discount_schedule_c,
        sbqq_effective_date_c,
        sbqq_expiration_date_c,
        sbqq_filter_field_c,
        sbqq_filter_value_c,
        sbqq_non_discountable_c,
        sbqq_operator_c,
        sbqq_original_quote_line_c,
        sbqq_price_c,
        sbqq_product_c,
        sbqqsc_service_contract_c,
        system_modstamp

    from source

)

select * from renamed
