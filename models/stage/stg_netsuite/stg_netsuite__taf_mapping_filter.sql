
with source as (

    select * from {{ source('raw_netsuite', 'taf_mapping_filter') }}

),

renamed as (

    select
        data_access_object,
        data_access_object_filter,
        date_created,
        feature_name,
        is_inactive,
        is_visible_in_ui,
        last_modified_date,
        mapping_filters,
        parent_id,
        taf_mapping_filter_extid,
        taf_mapping_filter_id,
        taf_mapping_filter_name,
        ui_label

    from source

)

select * from renamed
