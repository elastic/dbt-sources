
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_contact_role_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        contact_id,
        created_by_id,
        created_date,
        is_deleted,
        is_primary,
        last_modified_by_id,
        last_modified_date,
        opportunity_id,
        role,
        system_modstamp,
        currency_iso_code,
        contact_stage_c,
        opportunity_stage_c

    from source

)

select * from renamed
