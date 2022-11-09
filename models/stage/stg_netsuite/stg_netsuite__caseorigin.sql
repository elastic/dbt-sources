
with source as (

    select * from {{ source('raw_netsuite', 'caseorigin') }}

),

renamed as (

    select
        case_origin_extid,
        case_origin_id,
        date_last_modified,
        description,
        is_inactive,
        name

    from source

)

select * from renamed
