
with source as (

    select * from {{ source('raw_salesforce', 'account_contact_role') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        contact_id,
        created_by_id,
        created_date,
        is_deleted,
        is_primary,
        last_modified_by_id,
        last_modified_date,
        role,
        system_modstamp

    from source

)

select * from renamed
