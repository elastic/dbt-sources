
with source as (

    select * from {{ source('raw_netsuite', 'product_lines_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        product_lines_extid,
        product_lines_id,
        product_lines_name

    from source

)

select * from renamed
