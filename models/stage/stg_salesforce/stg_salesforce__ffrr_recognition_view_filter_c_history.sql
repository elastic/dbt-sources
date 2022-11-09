
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_recognition_view_filter_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_field_apiname_c,
        ffrr_filter_c,
        ffrr_object_apiname_c,
        ffrr_recognition_view_tab_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        ffrr_object_and_group_c

    from source

)

select * from renamed
