
with source as (

    select * from {{ source('raw_netsuite', 'mx_setup_configuration_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        mx_setup_configuration_extid,
        mx_setup_configuration_id,
        parent_id,
        subsidiary_id,
        taf_setup_configuration_fie_id,
        value_0

    from source

)

select * from renamed
