
with source as (

    select * from {{ source('raw_recurly', 'billing_info_history') }}

),

renamed as (

    select
        id,
        updated_at,
        _fivetran_synced,
        account_id,
        billing_city,
        billing_country,
        billing_first_name,
        billing_last_name,
        billing_phone,
        billing_postal_code,
        billing_region,
        billing_street_1,
        billing_street_2,
        company,
        created_at,
        first_name,
        fraud_decision,
        fraud_risk_rules_triggered,
        fraud_score,
        last_name,
        payment_method_card_type,
        payment_method_exp_month,
        payment_method_exp_year,
        payment_method_first_six,
        payment_method_last_four,
        payment_method_object,
        updated_by_country,
        updated_by_ip,
        valid,
        vat_number

    from source

)

select * from renamed
