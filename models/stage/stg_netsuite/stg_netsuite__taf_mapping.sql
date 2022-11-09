
with source as (

    select * from {{ source('raw_netsuite', 'taf_mapping') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        mapping_category_id,
        mapping_input_value,
        mapping_key,
        mapping_value_id,
        parent_id,
        taf_mapping_extid,
        taf_mapping_id

    from source

)

select * from renamed
