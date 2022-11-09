
with source as (

    select * from {{ source('raw_salesforce', 'qualtrics_survey_staging_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        qualtrics_contact_first_name_c,
        qualtrics_contact_last_name_c,
        qualtrics_contact_primary_email_c,
        qualtrics_qualtrics_ts_c,
        qualtrics_survey_language_c,
        qualtrics_survey_send_date_c

    from source

)

select * from renamed
