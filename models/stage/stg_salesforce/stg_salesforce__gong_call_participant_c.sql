
with source as (

    select * from {{ source('raw_salesforce', 'gong_call_participant_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        gong_affiliation_c,
        gong_contact_participant_c,
        gong_full_name_temp_c,
        gong_gong_call_c,
        gong_lead_participant_c,
        gong_methods_c,
        gong_participant_email_c,
        gong_participant_full_name_c,
        gong_participant_phone_number_c,
        gong_participant_title_c,
        gong_participant_type_c,
        gong_url_c,
        gong_user_participant_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
