
with source as (

    select * from {{ source('raw_salesforce', 'tspc_ap_sc_category_c') }}

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
        system_modstamp,
        tspc_ap_c,
        tspc_code_c,
        tspc_eid_c,
        tspc_overall_score_ratio_c,
        tspc_template_question_category_c,
        tspc_total_max_score_c,
        tspc_total_score_c,
        tspc_total_score_ratio_c,
        tspc_uid_c

    from source

)

select * from renamed
