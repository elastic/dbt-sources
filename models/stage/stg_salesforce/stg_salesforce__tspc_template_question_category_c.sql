
with source as (

    select * from {{ source('raw_salesforce', 'tspc_template_question_category_c') }}

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
        tspc_category_c,
        tspc_code_c,
        tspc_eid_c,
        tspc_sort_order_c,
        tspc_sync_score_field_c,
        tspc_sync_score_ratio_field_c,
        tspc_sync_target_object_c,
        tspc_template_c

    from source

)

select * from renamed
