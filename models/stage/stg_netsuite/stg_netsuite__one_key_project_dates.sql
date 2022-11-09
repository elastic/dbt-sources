
with source as (

    select * from {{ source('raw_netsuite', 'one_key_project_dates') }}

),

renamed as (

    select
        date_0,
        date_created,
        is_inactive,
        key_name,
        last_modified_date,
        one_key_project_dates_extid,
        one_key_project_dates_id,
        parent_id,
        pm_highlight_as_problem,
        sort_display_order

    from source

)

select * from renamed
