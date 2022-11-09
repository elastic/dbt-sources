
with source as (

    select * from {{ source('raw_salesforce', 'tspc_event_person_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        tspc_contact_c,
        tspc_eid_c,
        tspc_event_c

    from source

)

select * from renamed
