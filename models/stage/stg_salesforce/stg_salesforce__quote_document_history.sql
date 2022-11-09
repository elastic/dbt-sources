
with source as (

    select * from {{ source('raw_salesforce', 'quote_document_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        content_version_document_id,
        created_by_id,
        created_date,
        currency_iso_code,
        discount,
        grand_total,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        quote_id,
        system_modstamp

    from source

)

select * from renamed