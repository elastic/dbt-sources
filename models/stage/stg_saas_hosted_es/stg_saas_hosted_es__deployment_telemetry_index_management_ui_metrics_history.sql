
with source as (

    select * from {{ source('raw_saas_hosted_es', 'deployment_telemetry_index_management_ui_metrics_history') }}

),

renamed as (

    select
        account_uuid,
        deployment_telemetry_index_management_ui_metrics_key,
        deployment_telemetry_index_management_ui_metrics_value,
        deployment_uuid,
        partition_date

    from source

)

select * from renamed