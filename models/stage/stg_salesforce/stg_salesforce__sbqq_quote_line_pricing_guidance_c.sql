
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_line_pricing_guidance_c') }}

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
        sbqq_quote_line_c,
        system_modstamp,
        sbqq_floor_c,
        sbqq_is_viewed_c,
        sbqq_quote_c,
        sbqq_explanation_c,
        sbqq_norm_c,
        sbqq_guidance_used_c,
        sbqq_target_c

    from source

)

select * from renamed
