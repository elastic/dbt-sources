
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_region') }}

),

renamed as (

    select
        transaction_region_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        region_code,
        region_country_id,
        region_name,
        region_nexus,
        transaction_region_extid,
        transaction_region_name

    from source

)

select * from renamed
