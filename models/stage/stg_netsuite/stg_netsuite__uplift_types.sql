
with source as (

    select * from {{ source('raw_netsuite', 'uplift_types') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        uplift,
        uplift_types_extid,
        uplift_types_id,
        uplift_types_name

    from source

)

select * from renamed
