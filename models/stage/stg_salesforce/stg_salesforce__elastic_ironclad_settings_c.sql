
with source as (

    select * from {{ source('raw_salesforce', 'elastic_ironclad_settings_c') }}

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
        nda_url_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
