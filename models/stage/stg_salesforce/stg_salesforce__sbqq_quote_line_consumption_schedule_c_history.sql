
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_line_consumption_schedule_c_history') }}

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
        sbqq_billing_term_c,
        sbqq_billing_term_unit_c,
        sbqq_category_c,
        sbqq_quote_line_c,
        sbqq_rating_method_c,
        sbqq_type_c,
        system_modstamp,
        sbqq_consumption_schedule_c,
        sbqq_description_c,
        sbqq_matching_attribute_c,
        sbqq_unit_of_measure_c

    from source

)

select * from renamed
