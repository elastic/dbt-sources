
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_routing_metric_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_total_roi_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_type_c,
        lean_data_routing_deployment_c,
        lean_data_date_c,
        lean_data_round_robin_pool_c,
        lean_data_total_rou_c,
        lean_data_metric_data_c,
        lean_data_total_roicm_c,
        lean_data_total_roucm_c,
        lean_data_scheduled_run_history_c,
        lean_data_endpoint_metric_data_c,
        lean_data_routing_actions_metric_data_c

    from source

)

select * from renamed
