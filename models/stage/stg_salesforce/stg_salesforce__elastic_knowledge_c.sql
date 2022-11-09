
with source as (

    select * from {{ source('raw_salesforce', 'elastic_knowledge_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        article_id_c,
        article_title_c,
        case_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp,
        article_url_c,
        alert_severity_c,
        knowledge_link_type_c

    from source

)

select * from renamed
