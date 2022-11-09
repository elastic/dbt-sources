
with source as (

    select * from {{ source('raw_netsuite', 'search_clean_up_rule_beta_history') }}

),

renamed as (

    select
        all_inactive_owners,
        automatic_0,
        date_created,
        description,
        exclude_private_searches,
        exclude_scheduled_searches,
        exclude_searches_available_as,
        exclude_searches_less_than_a_,
        exclude_searches_that_send_tr,
        exclude_selected_departments,
        exclude_selected_owners,
        exclude_selected_subsidiaries,
        filter_summary,
        is_inactive,
        last_modified_date,
        months_since_date_last_used_r,
        notify_search_owners_prior_to,
        notify_search_users_prior_to_,
        parent_id,
        search_clean_up_rule_beta_exti,
        search_clean_up_rule_beta_id,
        search_clean_up_rule_beta_name,
        search_id_filter,
        search_name_filter,
        selected_inactive_users_json,
        unconfirmed,
        notify_supervisors_prior_to_a,
        end_by,
        last_run_date,
        monthly_schedule,
        next_run_date,
        no_end_date,
        notify_supervisor_for_inactiv,
        repeat_frequency,
        weekly_schedule,
        yearly_schedule

    from source

)

select * from renamed
