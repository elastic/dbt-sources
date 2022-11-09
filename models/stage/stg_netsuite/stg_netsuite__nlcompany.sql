
with source as (

    select * from {{ source('raw_netsuite', 'nlcompany') }}

),

renamed as (

    select
        address,
        address_1,
        address_2,
        address_3,
        city,
        company_name,
        country,
        e_mail,
        fax,
        federal_ein,
        frst_fiscal_month,
        legal_name,
        logo_url,
        parent_company,
        parent_comp_id,
        phone,
        return_address,
        shipping_address,
        state1,
        state1_taxid,
        state2,
        state2_taxid,
        state3,
        state3_taxid,
        state4,
        state4_taxid,
        state5,
        state5_taxid,
        web_site,
        zip

    from source

)

select * from renamed
