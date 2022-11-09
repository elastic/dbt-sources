
with source as (

    select * from {{ source('raw_salesforce', 'learn_core_learn_core_admin_manager_c') }}

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
        last_referenced_date,
        last_viewed_date,
        learn_core_email_c,
        learn_core_feedback_length_average_c,
        learn_core_first_name_c,
        learn_core_full_name_c,
        learn_core_last_name_c,
        learn_core_learn_core_id_c,
        learn_core_permission_c,
        learn_core_review_average_c,
        learn_core_reviews_assigned_c,
        learn_core_reviews_completed_c,
        learn_core_reviews_with_feedback_c,
        learn_core_salesforce_user_c,
        learn_core_users_managed_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
