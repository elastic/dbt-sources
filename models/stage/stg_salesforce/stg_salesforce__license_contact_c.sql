
with source as (

    select * from {{ source('raw_salesforce', 'license_contact_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        contact_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        license_contact_on_opportunity_c,
        name,
        system_modstamp,
        contact_email_c,
        contact_name_c,
        count_c,
        trial_extension_dsr_c

    from source

)

select * from renamed
