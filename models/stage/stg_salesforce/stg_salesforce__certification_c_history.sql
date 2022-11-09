
with source as (

    select * from {{ source('raw_salesforce', 'certification_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        contact_c,
        created_by_id,
        created_date,
        currency_iso_code,
        expiration_date_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        result_c,
        start_date_c,
        system_modstamp,
        type_c,
        unique_id_c,
        is_active_c,
        status_c,
        contact_email_c

    from source

)

select * from renamed
