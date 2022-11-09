
with source as (

    select * from {{ source('raw_netsuite', 'process_additional_approvers_map_history') }}

),

renamed as (

    select
        employee_id,
        process_id

    from source

)

select * from renamed
