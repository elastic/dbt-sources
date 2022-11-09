
with source as (

    select * from {{ source('raw_netsuite_sa', 'ep_company_information') }}

),

renamed as (

    select
        ep_company_information_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        ep_company_information_extid,
        ep_company_information_name,
        is_inactive,
        last_modified_date,
        parent_id,
        tax_registration_number

    from source

)

select * from renamed
