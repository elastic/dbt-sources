
with source as (

    select * from {{ source('raw_netsuite_sa', 'components_per_routing_steps_history') }}

),

renamed as (

    select
        component_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        mfg_routing_id,
        sequence_id,
        sequence_number,
        partition_date

    from source

)

select * from renamed
