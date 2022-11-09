
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_order_line_c_history') }}

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
        learndot_category_c,
        learndot_contact_id_c,
        learndot_created_in_learndot_c,
        learndot_discount_c,
        learndot_id_c,
        learndot_learndot_product_c,
        learndot_order_id_c,
        learndot_organization_id_c,
        learndot_paid_c,
        learndot_payment_id_c,
        learndot_price_amount_c,
        learndot_provider_c,
        learndot_status_c,
        learndot_target_c,
        learndot_tax_amount_c,
        learndot_total_c,
        learndot_training_credit_expiry_c,
        learndot_training_credit_quantity_c,
        learndot_training_credits_c,
        learndot_training_credits_decimal_c,
        learndot_value_amount_c,
        learndot_value_currency_c,
        name,
        opportunity_c,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
