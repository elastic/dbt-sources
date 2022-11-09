
with source as (

    select * from {{ source('raw_salesforce', 'entitlement_contact_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        contact_id,
        created_by_id,
        created_date,
        currency_iso_code,
        entitlement_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
