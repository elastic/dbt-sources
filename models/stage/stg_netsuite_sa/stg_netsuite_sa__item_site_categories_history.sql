
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_site_categories_history') }}

),

renamed as (

    select
        fivetran_index,
        item_id,
        _fivetran_deleted,
        _fivetran_synced,
        category_id,
        category_sequence,
        category_type,
        date_deleted,
        default_name,
        description,
        full_name,
        ishidden,
        isinactive,
        ispreferred,
        long_description,
        parent_category_id,
        section_created_by,
        section_created_date,
        section_modified_by,
        section_modified_date,
        partition_date

    from source

)

select * from renamed
