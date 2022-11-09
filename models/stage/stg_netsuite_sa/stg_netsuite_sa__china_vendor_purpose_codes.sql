
with source as (

    select * from {{ source('raw_netsuite_sa', 'china_vendor_purpose_codes') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        china_vendor_purpose_codes_ext,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
