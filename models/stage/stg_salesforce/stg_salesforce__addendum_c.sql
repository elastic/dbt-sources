
with source as (

    select * from {{ source('raw_salesforce', 'addendum_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        addendum_c,
        addendum_download_link_c,
        addendum_of_language_c,
        addendum_signed_date_c,
        agreement_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        notes_c,
        record_type_id,
        status_c,
        system_modstamp,
        version_c,
        is_latest_c

    from source

)

select * from renamed
