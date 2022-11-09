
with source as (

    select * from {{ source('raw_netsuite_sa', 'subsidiary_class_map_history') }}

),

renamed as (

    select
        class_id,
        subsidiary_id,
        _fivetran_synced,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
