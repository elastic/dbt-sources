
with source as (

    select * from {{ source('raw_netsuite', 'case_types') }}

),

renamed as (

    select
        case_type_extid,
        case_type_id,
        date_last_modified,
        description,
        isinactive,
        name

    from source

)

select * from renamed
