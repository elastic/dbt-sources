
with source as (

    select * from {{ source('raw_salesforce', 'file_search_activity_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        avg_num_results,
        click_rank,
        count_queries,
        count_users,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        period,
        query_date,
        query_language,
        search_term,
        system_modstamp

    from source

)

select * from renamed
