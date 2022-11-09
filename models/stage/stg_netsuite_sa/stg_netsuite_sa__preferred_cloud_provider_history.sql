
with source as (

    select * from {{ source('raw_netsuite_sa', 'preferred_cloud_provider_history') }}

),

renamed as (

    select
        preferred_cloud_provider_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        preferred_cloud_provider_extid,
        preferred_cloud_provider_name,
        partition_date

    from source

)

select * from renamed
