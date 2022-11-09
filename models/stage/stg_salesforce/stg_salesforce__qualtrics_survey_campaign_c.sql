
with source as (

    select * from {{ source('raw_salesforce', 'qualtrics_survey_campaign_c') }}

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
        qualtrics_campaign_c,
        qualtrics_send_survey_complete_timestamp_c,
        qualtrics_survey_c,
        system_modstamp

    from source

)

select * from renamed
