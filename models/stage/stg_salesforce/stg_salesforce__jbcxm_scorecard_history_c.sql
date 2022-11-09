
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_scorecard_history_c') }}

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
        jbcxm_log_date_c,
        jbcxm_metric_c,
        jbcxm_score_id_c,
        jbcxm_snapshot_c,
        jbcxm_type_c,
        jbcxm_user_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
