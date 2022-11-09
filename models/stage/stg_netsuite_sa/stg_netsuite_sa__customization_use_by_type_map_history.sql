
with source as (

    select * from {{ source('raw_netsuite_sa', 'customization_use_by_type_map_history') }}

),

renamed as (

    select
        customization_id,
        record_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
