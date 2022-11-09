
with source as (

    select * from {{ source('raw_netsuite', 'bill_of_distributions') }}

),

renamed as (

    select
        bill_of_distribution_extid,
        bill_of_distribution_id,
        date_created,
        date_last_modified,
        distribution_category_id,
        distribution_network_id,
        is_inactive,
        location_id,
        subsidiary_id

    from source

)

select * from renamed
