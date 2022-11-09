
with source as (

    select * from {{ source('raw_netsuite', 'customization_departments_using_customization_map_history') }}

),

renamed as (

    select
        customization_id,
        department_id

    from source

)

select * from renamed
