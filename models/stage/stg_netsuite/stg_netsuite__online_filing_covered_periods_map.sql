
with source as (

    select * from {{ source('raw_netsuite', 'online_filing_covered_periods_map') }}

),

renamed as (

    select
        online_filing_id,
        tax_period_id

    from source

)

select * from renamed
