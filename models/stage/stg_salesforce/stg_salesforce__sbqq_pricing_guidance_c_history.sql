
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_pricing_guidance_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        sbqq_description_c,
        sbqq_explanation_c,
        sbqq_include_prior_purchases_c,
        sbqq_is_active_c,
        sbqq_summary_c,
        sbqq_type_c,
        sbqq_unit_c

    from source

)

select * from renamed
