
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_mapping_category_history') }}

),

renamed as (

    select
        taf_mapping_category_id,
        _fivetran_deleted,
        _fivetran_synced,
        code,
        column_header,
        data_access_object,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        taf_mapping_category_extid,
        taf_mapping_category_name,
        partition_date

    from source

)

select * from renamed
