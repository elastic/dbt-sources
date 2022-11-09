
with source as (

    select * from {{ source('raw_netsuite', 'one_executive_sponsor') }}

),

renamed as (

    select
        date_created,
        executive,
        is_inactive,
        last_modified_date,
        one_executive_sponsor_extid,
        one_executive_sponsor_id,
        one_executive_sponsor_name,
        parent_id

    from source

)

select * from renamed
