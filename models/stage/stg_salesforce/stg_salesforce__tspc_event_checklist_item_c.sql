
with source as (

    select * from {{ source('raw_salesforce', 'tspc_event_checklist_item_c') }}

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
        system_modstamp,
        tspc_completed_date_c,
        tspc_description_c,
        tspc_due_date_c,
        tspc_eid_c,
        tspc_event_c,
        tspc_has_help_c,
        tspc_is_completed_c,
        tspc_is_required_c,
        tspc_sort_order_c,
        tspc_template_item_c,
        tspc_title_c

    from source

)

select * from renamed
