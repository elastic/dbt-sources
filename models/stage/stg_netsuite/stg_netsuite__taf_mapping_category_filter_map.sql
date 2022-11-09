
with source as (

    select * from {{ source('raw_netsuite', 'taf_mapping_category_filter_map') }}

),

renamed as (

    select
        taf_mapping_category_id,
        taf_mapping_filter_id

    from source

)

select * from renamed
