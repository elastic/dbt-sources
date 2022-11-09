
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_account_map') }}

),

renamed as (

    select
        item_account_map_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        class_id,
        date_created,
        date_deleted,
        date_effective,
        date_end,
        date_last_modified,
        department_id,
        destination_account_id,
        form_template_component_id,
        form_template_id,
        is_class_any,
        is_department_any,
        is_location_any,
        item_account_map_extid,
        item_account_type,
        location_id,
        source_account_id,
        subsidiary_id

    from source

)

select * from renamed
