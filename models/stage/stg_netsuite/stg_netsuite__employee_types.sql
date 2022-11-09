
with source as (

    select * from {{ source('raw_netsuite', 'employee_types') }}

),

renamed as (

    select
        employee_type_id,
        isinactive,
        name,
        parent_id

    from source

)

select * from renamed
