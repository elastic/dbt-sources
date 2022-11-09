
with source as (

    select * from {{ source('raw_netsuite', 'uom') }}

),

renamed as (

    select
        abbreviation,
        conversion_rate,
        date_last_modified,
        is_base_unit,
        name,
        plural_abbreviation,
        plural_name,
        units_type_id,
        uom_id

    from source

)

select * from renamed
