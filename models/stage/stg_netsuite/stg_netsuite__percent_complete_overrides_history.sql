
with source as (

    select * from {{ source('raw_netsuite', 'percent_complete_overrides_history') }}

),

renamed as (

    select
        accounting_period_id,
        comments,
        percent_complete

    from source

)

select * from renamed
