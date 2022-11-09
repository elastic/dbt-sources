
with source as (

    select * from {{ source('raw_salesforce', 'case_audit_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        case_c,
        created_by_id,
        created_date,
        currency_iso_code,
        document_created_date_c,
        document_id_c,
        file_extension_c,
        file_name_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        status_c,
        subscription_c,
        system_modstamp,
        case_created_date_c,
        case_number_c,
        sub_id_c,
        sub_name_c,
        sub_status_c

    from source

)

select * from renamed
