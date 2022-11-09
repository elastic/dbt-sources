
with source as (

    select * from {{ source('raw_netsuite', 'case_origins') }}

),

renamed as (

    select
        case_origin_extid,
        case_origin_id,
        date_last_modified_,
        description,
        isinactive,
        name

    from source

)

select * from renamed
