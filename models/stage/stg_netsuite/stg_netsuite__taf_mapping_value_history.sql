
with source as (

    select * from {{ source('raw_netsuite', 'taf_mapping_value_history') }}

),

renamed as (

    select
        date_created,
        default_value,
        is_inactive,
        last_modified_date,
        mapping_category_id,
        parent_id,
        report_value,
        taf_mapping_value_extid,
        taf_mapping_value_id,
        taf_mapping_value_name

    from source

)

select * from renamed
