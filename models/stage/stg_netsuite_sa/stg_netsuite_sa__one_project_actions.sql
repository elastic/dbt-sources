
with source as (

    select * from {{ source('raw_netsuite_sa', 'one_project_actions') }}

),

renamed as (

    select
        one_project_actions_id,
        _fivetran_deleted,
        _fivetran_synced,
        action_item_status_id,
        category_id,
        config_week,
        date_completed,
        date_created,
        date_deleted,
        due_date,
        is_inactive,
        last_modified_date,
        n__complete,
        ns_case_id,
        one_project_actions_extid,
        parent_id,
        priority_id,
        resource_name_id,
        task_name,
        to_be_confirmed_by_id

    from source

)

select * from renamed
