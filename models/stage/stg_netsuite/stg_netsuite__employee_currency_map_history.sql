
with source as (

    select * from {{ source('raw_netsuite', 'employee_currency_map_history') }}

),

renamed as (

    select
        currency_id,
        employee_id

    from source

)

select * from renamed
