
with source as (

    select * from {{ source('raw_netsuite', 'contactrole') }}

),

renamed as (

    select
        contactrole_extid,
        contactrole_id,
        date_last_modified,
        is_inactive,
        name

    from source

)

select * from renamed
