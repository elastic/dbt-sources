
with source as (

    select * from {{ source('raw_netsuite_sa', 'one_key_project_dates') }}

),

renamed as (

    select
        one_key_project_dates_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_0,
        date_created,
        date_deleted,
        is_inactive,
        key_name,
        last_modified_date,
        one_key_project_dates_extid,
        parent_id,
        pm_highlight_as_problem,
        sort_display_order

    from source

)

select * from renamed
