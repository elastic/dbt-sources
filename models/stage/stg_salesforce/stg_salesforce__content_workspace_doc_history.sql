
with source as (

    select * from {{ source('raw_salesforce', 'content_workspace_doc_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        content_document_id,
        content_workspace_id,
        created_date,
        is_deleted,
        is_owner,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
