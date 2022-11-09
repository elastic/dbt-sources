
with source as (

    select * from {{ source('raw_netsuite_sa', 'online_filing_covered_periods_map_history') }}

),

renamed as (

    select
        online_filing_id,
        tax_period_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
