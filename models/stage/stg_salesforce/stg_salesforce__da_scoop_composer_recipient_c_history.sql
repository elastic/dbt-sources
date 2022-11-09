
with source as (

    select * from {{ source('raw_salesforce', 'da_scoop_composer_recipient_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        da_scoop_composer_contact_c,
        da_scoop_composer_lead_c,
        da_scoop_composer_recipient_c,
        da_scoop_composer_times_opened_c,
        da_scoop_composer_tracked_message_c,
        da_scoop_composer_type_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
