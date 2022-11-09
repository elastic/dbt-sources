
with source as (

    select * from {{ source('raw_salesforce', 'visualforce_access_metrics_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        apex_page_id,
        daily_page_view_count,
        metrics_date,
        system_modstamp,
        log_date,
        profile_id,
        _fivetran_deleted

    from source

)

select * from renamed
