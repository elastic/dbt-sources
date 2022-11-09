
with source as (

    select * from {{ source('raw_salesforce', 'case_article_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        article_language,
        article_version_number,
        case_id,
        created_by_id,
        created_date,
        is_deleted,
        is_shared_by_email,
        knowledge_article_id,
        knowledge_article_version_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
