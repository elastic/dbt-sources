
with source as (

    select * from {{ source('raw_salesforce', 'app_analytics_query_request') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data_type,
        download_expiration_time,
        download_url,
        end_time,
        error_message,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        organization_ids,
        package_ids,
        request_state,
        start_time,
        system_modstamp,
        download_size,
        query_submitted_time,
        file_compression,
        file_type,
        available_since

    from source

)

select * from renamed
