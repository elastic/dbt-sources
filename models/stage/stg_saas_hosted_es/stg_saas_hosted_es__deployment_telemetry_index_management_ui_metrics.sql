
with source as (

    select * from {{ source('raw_saas_hosted_es', 'deployment_telemetry_index_management_ui_metrics') }}

),

renamed as (

    select
        account_uuid,
        deployment_telemetry_index_management_ui_metrics_key,
        deployment_telemetry_index_management_ui_metrics_value,
        deployment_uuid

    from source

)

select * from renamed
