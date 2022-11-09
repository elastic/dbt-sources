
with source as (

    select * from {{ source('raw_netsuite', 'tax_cache_detail') }}

),

renamed as (

    select
        date_created,
        detail,
        is_inactive,
        last_modified_date,
        metadata,
        parent_id,
        tax_cache_detail_extid,
        tax_cache_detail_id,
        tax_cache_id

    from source

)

select * from renamed
