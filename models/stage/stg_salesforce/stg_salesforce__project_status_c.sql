
with source as (

    select * from {{ source('raw_salesforce', 'project_status_c') }}

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
        name,
        owner_id,
        system_modstamp,
        project_manager_name_c,
        project_name_c,
        project_status_notes_c,
        project_manager_c,
        stage_c,
        project_c,
        start_date_c,
        opportunity_c,
        remaining_hours_c,
        use_case_c,
        end_date_c

    from source

)

select * from renamed
