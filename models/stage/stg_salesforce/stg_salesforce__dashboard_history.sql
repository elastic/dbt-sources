
with source as (

    select * from {{ source('raw_salesforce', 'dashboard_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        background_direction,
        background_end,
        background_start,
        created_by_id,
        created_date,
        dashboard_result_refreshed_date,
        dashboard_result_running_user,
        description,
        developer_name,
        folder_id,
        folder_name,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        left_size,
        middle_size,
        namespace_prefix,
        right_size,
        running_user_id,
        system_modstamp,
        text_color,
        title,
        title_color,
        title_size,
        type,
        chart_theme,
        color_palette,
        _fivetran_deleted

    from source

)

select * from renamed
