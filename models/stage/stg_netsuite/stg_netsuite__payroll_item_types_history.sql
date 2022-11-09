
with source as (

    select * from {{ source('raw_netsuite', 'payroll_item_types_history') }}

),

renamed as (

    select
        name,
        parent_id,
        payroll_item_type_id

    from source

)

select * from renamed
