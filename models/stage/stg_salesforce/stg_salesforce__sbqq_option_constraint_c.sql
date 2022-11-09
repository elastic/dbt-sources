
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_option_constraint_c') }}

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
        sbqq_active_c,
        sbqq_check_prior_purchases_c,
        sbqq_configured_sku_c,
        sbqq_constrained_option_c,
        sbqq_constraining_option_c,
        sbqq_option_constraint_group_c,
        sbqq_type_c,
        system_modstamp

    from source

)

select * from renamed
