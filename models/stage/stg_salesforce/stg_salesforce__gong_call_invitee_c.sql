
with source as (

    select * from {{ source('raw_salesforce', 'gong_call_invitee_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        gong_contact_id_c,
        gong_gong_interaction_c,
        gong_lead_id_c,
        gong_name_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
