
with source as (

    select * from {{ source('raw_salesforce', 'contract_contact_role_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        contact_id,
        contract_id,
        created_by_id,
        created_date,
        id,
        is_deleted,
        is_primary,
        last_modified_by_id,
        last_modified_date,
        role,
        system_modstamp

    from source

)

select * from renamed