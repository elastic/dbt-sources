
with source as (

    select * from {{ source('raw_netsuite_sa', 'product_lines') }}

),

renamed as (

    select
        product_lines_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        product_lines_extid,
        product_lines_name

    from source

)

select * from renamed
