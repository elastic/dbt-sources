
with source as (

    select * from {{ source('raw_salesforce', 'support_article_ka_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        archived_by_id,
        archived_date,
        article_number,
        case_association_count,
        created_by_id,
        created_date,
        first_published_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_published_date,
        last_referenced_date,
        last_viewed_date,
        system_modstamp,
        total_view_count,
        migrated_to_from_article,
        _fivetran_deleted

    from source

)

select * from renamed
