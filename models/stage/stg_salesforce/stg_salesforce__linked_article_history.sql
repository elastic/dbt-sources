
with source as (

    select * from {{ source('raw_salesforce', 'linked_article_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        knowledge_article_id,
        knowledge_article_version_id,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        type,
        linked_entity_id

    from source

)

select * from renamed
