
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_mapping_filter_history') }}

),

renamed as (

    select
        taf_mapping_filter_id,
        _fivetran_deleted,
        _fivetran_synced,
        data_access_object,
        data_access_object_filter,
        date_created,
        date_deleted,
        feature_name,
        is_inactive,
        is_visible_in_ui,
        last_modified_date,
        mapping_filters,
        parent_id,
        taf_mapping_filter_extid,
        taf_mapping_filter_name,
        ui_label,
        partition_date

    from source

)

select * from renamed
