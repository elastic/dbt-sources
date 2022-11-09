
with source as (

    select * from {{ source('raw_netsuite', 'companycontactmap_history') }}

),

renamed as (

    select
        company_id,
        contactrole_id,
        contact_id,
        date_last_modified

    from source

)

select * from renamed
