
with source as (

    select * from {{ source('raw_salesforce', 'tspc_template_question_answer_c') }}

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
        tspc_attitude_c,
        tspc_color_c,
        tspc_eid_c,
        tspc_has_text_answer_c,
        tspc_max_score_c,
        tspc_sort_order_c,
        tspc_sync_text_answer_field_c,
        tspc_sync_value_field_pickval_c,
        tspc_template_question_c,
        tspc_text_c

    from source

)

select * from renamed
