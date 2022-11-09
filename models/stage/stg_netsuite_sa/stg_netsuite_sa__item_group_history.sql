
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_group_history') }}

),

renamed as (

    select
        item_group_id,
        parent_id,
        _fivetran_synced,
        bom_quantity,
        component_yield,
        effective_date,
        effective_revision,
        item_source,
        line_id,
        member_id,
        obsolete_date,
        obsolete_revision,
        quantity,
        rate_plan_id,
        _fivetran_deleted,
        date_deleted,
        unit_of_measure_id,
        partition_date

    from source

)

select * from renamed
