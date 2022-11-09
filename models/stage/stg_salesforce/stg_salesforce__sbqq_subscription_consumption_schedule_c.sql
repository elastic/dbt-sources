
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_subscription_consumption_schedule_c') }}

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
        sbqq_billing_term_c,
        sbqq_billing_term_unit_c,
        sbqq_category_c,
        sbqq_rating_method_c,
        sbqq_subscription_c,
        sbqq_type_c,
        system_modstamp,
        sbqq_unit_of_measure_c,
        sbqq_consumption_schedule_c,
        sbqq_matching_attribute_c,
        sbqq_description_c

    from source

)

select * from renamed
