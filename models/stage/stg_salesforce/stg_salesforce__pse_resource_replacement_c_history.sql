
with source as (

    select * from {{ source('raw_salesforce', 'pse_resource_replacement_c_history') }}

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
        name,
        pse_records_per_page_c,
        pse_show_all_records_c,
        pse_show_assignments_c,
        pse_show_project_task_assignments_c,
        pse_show_resource_requests_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
