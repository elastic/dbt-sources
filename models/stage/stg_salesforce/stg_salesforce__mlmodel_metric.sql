
with source as (

    select * from {{ source('raw_salesforce', 'mlmodel_metric') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        basic_metric_value,
        complex_metric_value,
        created_by_id,
        created_date,
        data_set_type,
        end_time,
        graph_type,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        metric_type,
        model_id,
        name,
        row_count,
        span,
        start_time,
        system_modstamp

    from source

)

select * from renamed
