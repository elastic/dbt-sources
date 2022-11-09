
with source as (

    select * from {{ source('raw_salesforce', 'content_document_link_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        content_document_id,
        id,
        is_deleted,
        linked_entity_id,
        share_type,
        system_modstamp,
        visibility,
        _fivetran_deleted

    from source

)

select * from renamed
