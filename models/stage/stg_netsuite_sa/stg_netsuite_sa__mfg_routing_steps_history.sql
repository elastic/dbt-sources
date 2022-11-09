
with source as (

    select * from {{ source('raw_netsuite_sa', 'mfg_routing_steps_history') }}

),

renamed as (

    select
        fivetran_index,
        mfg_routing_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        lag_amount,
        lag_type,
        lag_units,
        mfg_cost_template_id,
        mfg_work_center_id,
        name,
        operation_yield,
        run_rate,
        sequence_0,
        setup_time,
        partition_date

    from source

)

select * from renamed
