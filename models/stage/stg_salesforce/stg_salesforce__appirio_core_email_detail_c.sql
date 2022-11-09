
with source as (

    select * from {{ source('raw_salesforce', 'appirio_core_email_detail_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        appirio_core_url_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
