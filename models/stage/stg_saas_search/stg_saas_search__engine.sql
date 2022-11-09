
with source as (

    select * from {{ source('raw_saas_search', 'engine') }}

),

renamed as (

    select
        total_queries_last_month,
        id,
        name,
        slug,
        document_count,
        crawl_based,
        account_id,
        last_touched_at,
        created_at

    from source

)

select * from renamed
