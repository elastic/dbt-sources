
with source as (

    select * from {{ source('raw_netsuite_sa', 'process_fields_map_history') }}

),

renamed as (

    select
        customization_id,
        process_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
