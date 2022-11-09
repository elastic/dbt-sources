
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_mapping_value') }}

),

renamed as (

    select
        taf_mapping_value_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        default_value,
        is_inactive,
        last_modified_date,
        mapping_category_id,
        parent_id,
        report_value,
        taf_mapping_value_extid,
        taf_mapping_value_name

    from source

)

select * from renamed
