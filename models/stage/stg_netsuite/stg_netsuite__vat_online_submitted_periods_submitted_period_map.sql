
with source as (

    select * from {{ source('raw_netsuite', 'vat_online_submitted_periods_submitted_period_map') }}

),

renamed as (

    select
        tax_period_id,
        vat_online_submitted_period_id

    from source

)

select * from renamed
