
with source as (

    select * from {{ source('raw_netsuite', 'uplift_cap_types') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        uplift_cap,
        uplift_cap_types_extid,
        uplift_cap_types_id,
        uplift_cap_types_name

    from source

)

select * from renamed
