
with source as (

    select * from {{ source('raw_netsuite', 'one_project_actions') }}

),

renamed as (

    select
        action_item_status_id,
        category_id,
        config_week,
        date_completed,
        date_created,
        due_date,
        is_inactive,
        last_modified_date,
        ns_case_id,
        n__complete,
        one_project_actions_extid,
        one_project_actions_id,
        parent_id,
        priority_id,
        resource_name_id,
        task_name,
        to_be_confirmed_by_id

    from source

)

select * from renamed
