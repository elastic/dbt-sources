
with source as (

    select * from {{ source('raw_netsuite_sa', 'vendor_description') }}

),

renamed as (

    select
        vendor_description_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        vendor_description_extid,
        vendor_description_name,
        display_to_vendor

    from source

)

select * from renamed
