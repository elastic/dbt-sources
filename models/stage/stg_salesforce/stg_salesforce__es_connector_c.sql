
with source as (

    select * from {{ source('raw_salesforce', 'es_connector_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body_c,
        created_by_id,
        created_date,
        currency_iso_code,
        encrypted_password_c,
        endpoint_c,
        is_active_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        password_c,
        search_description_c,
        search_term_c,
        system_modstamp,
        unique_record_name_c,
        username_c,
        solution_c

    from source

)

select * from renamed
