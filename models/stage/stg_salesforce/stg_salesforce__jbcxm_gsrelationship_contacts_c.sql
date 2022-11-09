
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gsrelationship_contacts_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_contact_c,
        jbcxm_gsrole_c,
        jbcxm_relationship_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
