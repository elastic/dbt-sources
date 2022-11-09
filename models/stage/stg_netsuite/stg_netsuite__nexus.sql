
with source as (

    select * from {{ source('raw_netsuite', 'nexus') }}

),

renamed as (

    select
        country,
        date_valid_since,
        date_valid_until,
        description,
        hierarchy_level,
        is_inactive,
        is_tax_date_from_fulfillment,
        nexus_id,
        parent_id,
        state,
        taxcode_id,
        tax_agency_id,
        vendtax1_id,
        vendtax2_id

    from source

)

select * from renamed
