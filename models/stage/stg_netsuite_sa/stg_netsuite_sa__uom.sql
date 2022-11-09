
with source as (

    select * from {{ source('raw_netsuite_sa', 'uom') }}

),

renamed as (

    select
        uom_id,
        _fivetran_deleted,
        _fivetran_synced,
        abbreviation,
        conversion_rate,
        date_deleted,
        date_last_modified,
        is_base_unit,
        name,
        plural_abbreviation,
        plural_name,
        units_type_id

    from source

)

select * from renamed
