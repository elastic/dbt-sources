
with source as (

    select * from {{ source('raw_netsuite', 'taf_mapping_category') }}

),

renamed as (

    select
        code,
        column_header,
        data_access_object,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        taf_mapping_category_extid,
        taf_mapping_category_id,
        taf_mapping_category_name

    from source

)

select * from renamed
