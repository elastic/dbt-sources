
with source as (

    select * from {{ source('raw_salesforce', 'navigation_menu_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        access_restriction,
        created_by_id,
        created_date,
        default_list_view_id,
        is_deleted,
        label,
        last_modified_by_id,
        last_modified_date,
        navigation_link_set_id,
        parent_id,
        position,
        system_modstamp,
        target,
        target_prefs,
        type,
        draft_row_id,
        status,
        _fivetran_deleted

    from source

)

select * from renamed
