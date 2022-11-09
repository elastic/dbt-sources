
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_price_tier_c_history') }}

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
        sbqq_discount_amount_c,
        sbqq_discount_percentage_c,
        sbqq_lower_bound_c,
        sbqq_number_c,
        sbqq_original_block_price_c,
        sbqq_original_discount_tier_c,
        sbqq_price_c,
        sbqq_price_model_c,
        sbqq_price_schedule_c,
        sbqq_term_discount_c,
        sbqq_upper_bound_c,
        sbqq_volumn_discount_c,
        system_modstamp

    from source

)

select * from renamed
