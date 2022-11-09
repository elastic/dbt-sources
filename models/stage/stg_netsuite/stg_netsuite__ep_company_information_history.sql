
with source as (

    select * from {{ source('raw_netsuite', 'ep_company_information_history') }}

),

renamed as (

    select
        date_created,
        ep_company_information_extid,
        ep_company_information_id,
        ep_company_information_name,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_registration_number

    from source

)

select * from renamed
