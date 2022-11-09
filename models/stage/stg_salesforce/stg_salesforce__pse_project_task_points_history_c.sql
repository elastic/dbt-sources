
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_task_points_history_c') }}

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
        pse_change_date_c,
        pse_change_in_value_c,
        pse_new_value_c,
        pse_old_value_c,
        pse_project_task_c,
        system_modstamp

    from source

)

select * from renamed
