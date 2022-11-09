
with source as (

    select * from {{ source('raw_salesforce', 'tspc_ap_sc_question_answer_c') }}

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
        tspc_eid_c,
        tspc_is_selected_c,
        tspc_question_c,
        tspc_score_c,
        tspc_template_answer_c,
        tspc_text_answer_c,
        tspc_uid_c

    from source

)

select * from renamed