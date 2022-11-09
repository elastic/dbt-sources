
with source as (

    select * from {{ source('raw_netsuite_sa', 'nexus_history') }}

),

renamed as (

    select
        nexus_id,
        _fivetran_deleted,
        _fivetran_synced,
        country,
        date_deleted,
        date_valid_since,
        date_valid_until,
        description,
        hierarchy_level,
        is_inactive,
        is_tax_date_from_fulfillment,
        parent_id,
        state,
        tax_agency_id,
        taxcode_id,
        vendtax1_id,
        vendtax2_id,
        partition_date

    from source

)

select * from renamed
