
with source as (

    select * from {{ source('raw_salesforce', 'learn_core_learn_core_checklist_item_user_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        learn_core_assigned_date_c,
        learn_core_checklist_checklist_item_user_id_c,
        learn_core_checklist_id_c,
        learn_core_checklist_item_created_date_c,
        learn_core_checklist_item_id_c,
        learn_core_checklist_item_status_c,
        learn_core_checklist_item_title_c,
        learn_core_checklist_item_type_c,
        learn_core_checklist_title_c,
        learn_core_completion_date_c,
        learn_core_due_date_c,
        learn_core_email_c,
        learn_core_first_name_c,
        learn_core_is_overdue_c,
        learn_core_last_name_c,
        learn_core_salesforce_user_c,
        learn_core_user_id_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
