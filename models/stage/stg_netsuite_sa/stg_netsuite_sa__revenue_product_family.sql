
with source as (

    select * from {{ source('raw_netsuite_sa', 'revenue_product_family') }}

),

renamed as (

    select
        revenue_product_family_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        revenue_product_family_extid,
        revenue_product_family_name

    from source

)

select * from renamed
