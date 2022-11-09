
with source as (

    select * from {{ source('raw_netsuite_sa', 'search_clean_up_rule_beta_history') }}

),

renamed as (

    select
        search_clean_up_rule_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        all_inactive_owners,
        automatic_0,
        date_created,
        date_deleted,
        description,
        end_by,
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
        last_run_date,
        monthly_schedule,
        months_since_date_last_used_r,
        next_run_date,
        no_end_date,
        notify_search_owners_prior_to,
        notify_search_users_prior_to_,
        notify_supervisor_for_inactiv,
        parent_id,
        repeat_frequency,
        search_clean_up_rule_beta_exti,
        search_clean_up_rule_beta_name,
        search_id_filter,
        search_name_filter,
        selected_inactive_users_json,
        unconfirmed,
        weekly_schedule,
        yearly_schedule,
        partition_date

    from source

)

select * from renamed