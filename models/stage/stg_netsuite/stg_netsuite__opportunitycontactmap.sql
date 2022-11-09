
with source as (

    select * from {{ source('raw_netsuite', 'opportunitycontactmap') }}

),

renamed as (

    select
        contactrole_id,
        contact_id,
        date_last_modified,
        opportunity_id

    from source

)

select * from renamed
