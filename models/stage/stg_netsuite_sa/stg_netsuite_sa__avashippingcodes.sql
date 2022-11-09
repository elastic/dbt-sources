
with source as (

    select * from {{ source('raw_netsuite_sa', 'avashippingcodes') }}

),

renamed as (

    select
        avashippingcodes_id,
        _fivetran_deleted,
        _fivetran_synced,
        avashippingcodes_extid,
        avashippingcodes_name,
        date_created,
        date_deleted,
        description,
        is_inactive,
        last_modified_date,
        parent_id,
        shipping_code

    from source

)

select * from renamed
