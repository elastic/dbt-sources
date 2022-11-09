
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_behavior_map_history') }}

),

renamed as (

    select
        control_type_id,
        customization_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
