
with source as (

    select * from {{ source('raw_netsuite', 'mfg_routing_steps_history') }}

),

renamed as (

    select
        lag_amount,
        lag_type,
        lag_units,
        mfg_cost_template_id,
        mfg_routing_id,
        mfg_work_center_id,
        name,
        operation_yield,
        run_rate,
        sequence_0,
        setup_time

    from source

)

select * from renamed
