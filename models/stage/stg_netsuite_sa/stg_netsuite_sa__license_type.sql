
with source as (

    select * from {{ source('raw_netsuite_sa', 'license_type') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        license_type_extid,
        list_item_name

    from source

)

select * from renamed
