
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_cache_history') }}

),

renamed as (

    select
        tax_cache_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        properties,
        tax_cache_extid,
        tax_cache_name,
        partition_date

    from source

)

select * from renamed
