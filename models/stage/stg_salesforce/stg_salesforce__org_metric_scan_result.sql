
with source as (

    select * from {{ source('raw_salesforce', 'org_metric_scan_result') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        date,
        flags,
        is_deleted,
        item_status,
        last_modified_by_id,
        last_modified_date,
        name,
        object,
        org_metric_scan_summary_id,
        profile,
        quantity,
        system_modstamp,
        type,
        url,
        user

    from source

)

select * from renamed
