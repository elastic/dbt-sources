
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_term_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_active_c,
        sbqq_advanced_condition_c,
        sbqq_body_c,
        sbqq_conditions_met_c,
        sbqq_locked_c,
        sbqq_parent_term_c,
        sbqq_print_order_c,
        sbqq_quote_c,
        sbqq_standard_term_c,
        sbqq_status_c,
        sbqq_template_content_c,
        sub_type_c,
        system_modstamp,
        sbqq_type_c

    from source

)

select * from renamed
