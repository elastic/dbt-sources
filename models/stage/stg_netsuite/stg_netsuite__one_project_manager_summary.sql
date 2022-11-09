
with source as (

    select * from {{ source('raw_netsuite', 'one_project_manager_summary') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        one_project_manager_summary_ex,
        one_project_manager_summary_id,
        overview,
        parent_id,
        status_code_id,
        update_0

    from source

)

select * from renamed
