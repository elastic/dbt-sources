
with source as (

    select * from {{ source('raw_netsuite', 'item_site_categories') }}

),

renamed as (

    select
        category_id,
        category_sequence,
        category_type,
        default_name,
        description,
        full_name,
        ishidden,
        isinactive,
        ispreferred,
        item_id,
        long_description,
        parent_category_id,
        section_created_by,
        section_created_date,
        section_modified_by,
        section_modified_date

    from source

)

select * from renamed
