
with source as (

    select * from {{ source('raw_netsuite', 'tax_cache_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        properties,
        tax_cache_extid,
        tax_cache_id,
        tax_cache_name

    from source

)

select * from renamed
