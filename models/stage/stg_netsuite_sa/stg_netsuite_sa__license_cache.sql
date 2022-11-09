
with source as (

    select * from {{ source('raw_netsuite_sa', 'license_cache') }}

),

renamed as (

    select
        license_cache_id,
        _fivetran_deleted,
        _fivetran_synced,
        bundle,
        date_created,
        date_deleted,
        end_date,
        hval,
        is_inactive,
        last_modified_date,
        license_cache_extid,
        parent_id,
        start_date,
        status_id,
        ttl,
        item

    from source

)

select * from renamed
