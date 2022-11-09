
with source as (

    select * from {{ source('raw_netsuite', 'casetype') }}

),

renamed as (

    select
        case_type,
        case_type_extid,
        date_last_modified,
        description,
        is_inactive,
        name

    from source

)

select * from renamed
