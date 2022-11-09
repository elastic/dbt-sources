
with source as (

    select * from {{ source('raw_netsuite', 'payroll_item_types') }}

),

renamed as (

    select
        name,
        parent_id,
        payroll_item_type_id

    from source

)

select * from renamed
