
with source as (

    select * from {{ source('raw_salesforce', 'case_external_document_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        case_id,
        created_by_id,
        created_date,
        currency_iso_code,
        display_url,
        external_document_uid,
        external_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        title

    from source

)

select * from renamed
