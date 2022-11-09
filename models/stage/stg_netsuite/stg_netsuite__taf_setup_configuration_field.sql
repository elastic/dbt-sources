
with source as (

    select * from {{ source('raw_netsuite', 'taf_setup_configuration_field') }}

),

renamed as (

    select
        date_created,
        field_key,
        field_type_id,
        is_inactive,
        last_modified_date,
        parent_id,
        report,
        taf_setup_configuration_fie_ex,
        taf_setup_configuration_fie_id,
        taf_setup_configuration_fie_na

    from source

)

select * from renamed
