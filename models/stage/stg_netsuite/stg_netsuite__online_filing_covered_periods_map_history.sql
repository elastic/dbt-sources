
with source as (

    select * from {{ source('raw_netsuite', 'online_filing_covered_periods_map_history') }}

),

renamed as (

    select
        online_filing_id,
        tax_period_id

    from source

)

select * from renamed
