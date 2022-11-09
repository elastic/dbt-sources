
with source as (

    select * from {{ source('raw_salesforce', 'org_metric_scan_summary_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        error_message,
        feature_limit,
        id,
        implementation_effort,
        is_deleted,
        item_count,
        last_modified_by_id,
        last_modified_date,
        name,
        org_metric_id,
        percent_usage,
        scan_date,
        status,
        system_modstamp,
        unit

    from source

)

select * from renamed
