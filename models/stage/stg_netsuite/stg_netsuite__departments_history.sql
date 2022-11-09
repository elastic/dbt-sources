
with source as (

    select * from {{ source('raw_netsuite', 'departments_history') }}

),

renamed as (

    select
        date_last_modified,
        department_extid,
        department_id,
        full_name,
        isinactive,
        name,
        parent_id

    from source

)

select * from renamed
