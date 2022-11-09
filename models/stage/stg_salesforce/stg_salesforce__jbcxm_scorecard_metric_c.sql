
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_scorecard_metric_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_allow_override_c,
        jbcxm_display_order_c,
        jbcxm_group_id_c,
        jbcxm_help_text_c,
        jbcxm_input_type_c,
        jbcxm_is_active_c,
        jbcxm_is_group_c,
        jbcxm_metric_type_c,
        jbcxm_period_type_c,
        jbcxm_scoring_scheme_id_c,
        jbcxm_validity_period_c,
        jbcxm_weight_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
