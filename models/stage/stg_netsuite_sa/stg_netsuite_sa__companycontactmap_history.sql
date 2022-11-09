
with source as (

    select * from {{ source('raw_netsuite_sa', 'companycontactmap_history') }}

),

renamed as (

    select
        company_id,
        contact_id,
        _fivetran_synced,
        contactrole_id,
        date_last_modified,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed