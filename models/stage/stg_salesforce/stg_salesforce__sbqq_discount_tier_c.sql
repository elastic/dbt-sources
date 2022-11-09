
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_discount_tier_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        avp_discount_max_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        rep_discount_max_c,
        sbqq_discount_amount_c,
        sbqq_discount_c,
        sbqq_lower_bound_c,
        sbqq_number_c,
        sbqq_price_c,
        sbqq_schedule_c,
        sbqq_upper_bound_c,
        system_modstamp

    from source

)

select * from renamed
