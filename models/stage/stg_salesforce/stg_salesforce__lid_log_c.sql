
with source as (

    select * from {{ source('raw_salesforce', 'lid_log_c') }}

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
        lid_body_c,
        lid_headers_c,
        lid_status_code_c,
        lid_status_message_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
