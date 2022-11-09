
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_custom_action_c') }}

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
        sbqq_action_c,
        sbqq_active_c,
        sbqq_brand_button_c,
        sbqq_class_c,
        sbqq_conditions_met_c,
        sbqq_default_c,
        sbqq_description_c,
        sbqq_display_order_c,
        sbqq_event_handler_name_c,
        sbqq_icon_c,
        sbqq_icon_class_c,
        sbqq_label_c,
        sbqq_location_c,
        sbqq_page_c,
        sbqq_page_handler_name_c,
        sbqq_parent_custom_action_c,
        sbqq_return_url_c,
        sbqq_target_object_c,
        sbqq_type_c,
        sbqq_url_c,
        sbqq_urltarget_c,
        system_modstamp

    from source

)

select * from renamed
