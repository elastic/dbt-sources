
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_demand_plans') }}

),

renamed as (

    select
        fivetran_index,
        item_demand_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        alt_demand_source_item_id,
        create_date,
        date_deleted,
        date_last_modified,
        historical_analysis_duration,
        item_id,
        last_modified_date,
        location_id,
        memo,
        projection_duration,
        projection_interval,
        projection_method,
        projection_start_date,
        subsidiary_id

    from source

)

select * from renamed
