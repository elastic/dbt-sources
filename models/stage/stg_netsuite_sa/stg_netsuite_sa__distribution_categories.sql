
with source as (

    select * from {{ source('raw_netsuite_sa', 'distribution_categories') }}

),

renamed as (

    select
        distribution_category_id,
        _fivetran_deleted,
        _fivetran_synced,
        category_name,
        date_created,
        date_deleted,
        date_last_modified,
        is_inactive

    from source

)

select * from renamed
