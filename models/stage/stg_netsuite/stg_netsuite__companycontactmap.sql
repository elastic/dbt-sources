
with source as (

    select * from {{ source('raw_netsuite', 'companycontactmap') }}

),

renamed as (

    select
        company_id,
        contact_id,
        contactrole_id,
        date_last_modified

    from source

)

select * from renamed
