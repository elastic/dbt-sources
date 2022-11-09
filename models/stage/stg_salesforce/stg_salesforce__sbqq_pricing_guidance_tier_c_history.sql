
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_pricing_guidance_tier_c_history') }}

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
        sbqq_pricing_guidance_c,
        system_modstamp,
        sbqq_floor_discount_c,
        sbqq_lower_bound_c,
        sbqq_norm_discount_c,
        sbqq_target_discount_c,
        sbqq_upper_bound_c

    from source

)

select * from renamed