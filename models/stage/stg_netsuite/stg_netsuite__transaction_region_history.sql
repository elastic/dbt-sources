
with source as (

    select * from {{ source('raw_netsuite', 'transaction_region_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        region_code,
        region_country_id,
        region_name,
        region_nexus,
        transaction_region_extid,
        transaction_region_id,
        transaction_region_name

    from source

)

select * from renamed
