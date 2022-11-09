
with source as (

    select * from {{ source('raw_netsuite', 'sublocations_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        sublocations_extid,
        sublocations_id,
        sublocations_name

    from source

)

select * from renamed
