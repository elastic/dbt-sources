
with source as (

    select * from {{ source('raw_netsuite_sa', 'on_demand_type_history') }}

),

renamed as (

    select
        on_demand_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        on_demand_type_extid,
        on_demand_type_name,
        parent_id,
        partition_date

    from source

)

select * from renamed
