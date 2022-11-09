
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_email_staging_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        apxtconga_4_htmlbody_c,
        apxtconga_4_subject_c,
        apxtconga_4_text_body_c,
        apxtconga_4_what_id_c,
        apxtconga_4_who_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
