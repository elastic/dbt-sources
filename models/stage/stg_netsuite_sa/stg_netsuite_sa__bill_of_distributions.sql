
with source as (

    select * from {{ source('raw_netsuite_sa', 'bill_of_distributions') }}

),

renamed as (

    select
        bill_of_distribution_id,
        _fivetran_deleted,
        _fivetran_synced,
        bill_of_distribution_extid,
        date_created,
        date_deleted,
        date_last_modified,
        distribution_category_id,
        distribution_network_id,
        is_inactive,
        location_id,
        subsidiary_id

    from source

)

select * from renamed
