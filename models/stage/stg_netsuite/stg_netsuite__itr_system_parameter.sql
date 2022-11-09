
with source as (

    select * from {{ source('raw_netsuite', 'itr_system_parameter') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        itr_system_parameter_extid,
        itr_system_parameter_id,
        itr_system_parameter_name,
        last_modified_date,
        parent_id,
        value_0

    from source

)

select * from renamed
