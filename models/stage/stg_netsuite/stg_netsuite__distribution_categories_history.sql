
with source as (

    select * from {{ source('raw_netsuite', 'distribution_categories_history') }}

),

renamed as (

    select
        category_name,
        date_created,
        date_last_modified,
        distribution_category_id,
        is_inactive

    from source

)

select * from renamed
