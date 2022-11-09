
with source as (

    select * from {{ source('raw_netsuite_sa', 'one_project_manager_summary_history') }}

),

renamed as (

    select
        one_project_manager_summary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        one_project_manager_summary_ex,
        overview,
        parent_id,
        status_code_id,
        update_0,
        partition_date

    from source

)

select * from renamed
