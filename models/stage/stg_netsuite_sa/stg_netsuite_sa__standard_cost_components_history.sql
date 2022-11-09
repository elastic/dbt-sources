
with source as (

    select * from {{ source('raw_netsuite_sa', 'standard_cost_components_history') }}

),

renamed as (

    select
        line_id,
        planned_standard_cost_id,
        _fivetran_deleted,
        _fivetran_synced,
        component_id,
        cost_category,
        date_deleted,
        quantity,
        standard_cost,
        partition_date

    from source

)

select * from renamed
