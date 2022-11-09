
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_scorecard_fact_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_c,
        jbcxm_cur_comment_c,
        jbcxm_cur_score_id_c,
        jbcxm_cur_src_val_c,
        jbcxm_is_overridden_c,
        jbcxm_last_score_modified_date_c,
        jbcxm_metric_id_c,
        jbcxm_prev_score_id_c,
        jbcxm_prev_src_val_c,
        jbcxm_score_last_modified_by_c,
        jbcxm_trend_indicator_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
