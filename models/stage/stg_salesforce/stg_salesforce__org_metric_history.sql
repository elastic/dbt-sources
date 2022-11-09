
with source as (

    select * from {{ source('raw_salesforce', 'org_metric_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        category,
        created_by_id,
        created_date,
        currency_iso_code,
        feature_type,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        latest_org_metric_scan_summary_id,
        name,
        system_modstamp

    from source

)

select * from renamed
