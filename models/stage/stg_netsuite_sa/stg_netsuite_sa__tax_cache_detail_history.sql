
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_cache_detail_history') }}

),

renamed as (

    select
        tax_cache_detail_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        detail,
        is_inactive,
        last_modified_date,
        metadata,
        parent_id,
        tax_cache_detail_extid,
        tax_cache_id,
        partition_date

    from source

)

select * from renamed
