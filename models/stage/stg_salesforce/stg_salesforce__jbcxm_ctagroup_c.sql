
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_ctagroup_c') }}

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
        jbcxm_action_plan_c,
        jbcxm_active_date_c,
        jbcxm_closed_date_c,
        jbcxm_closed_lost_objective_count_c,
        jbcxm_closed_task_count_c,
        jbcxm_closed_won_objective_count_c,
        jbcxm_ctagroup_category_c,
        jbcxm_description_c,
        jbcxm_due_date_c,
        jbcxm_entity_type_c,
        jbcxm_gsclosed_overdue_c,
        jbcxm_gsdays_due_c,
        jbcxm_gsdays_past_due_date_c,
        jbcxm_gsdays_to_close_c,
        jbcxm_gsdays_until_close_c,
        jbcxm_gsdue_date_variance_c,
        jbcxm_gsoverdue_c,
        jbcxm_gsoverdue_type_c,
        jbcxm_gspercent_complete_c,
        jbcxm_high_lights_c,
        jbcxm_open_objective_count_c,
        jbcxm_open_task_count_c,
        jbcxm_original_due_date_c,
        jbcxm_owner_c,
        jbcxm_relationship_c,
        jbcxm_relationship_type_c,
        jbcxm_source_c,
        jbcxm_status_c,
        jbcxm_success_plan_type_c,
        jbcxm_template_c,
        jbcxm_total_objective_count_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
