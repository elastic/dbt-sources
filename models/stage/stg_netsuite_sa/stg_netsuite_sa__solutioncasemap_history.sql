
with source as (

    select * from {{ source('raw_netsuite_sa', 'solutioncasemap_history') }}

),

renamed as (

    select
        solution_id,
        supportcase_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_applied,
        date_deleted,
        entity_id,
        partition_date

    from source

)

select * from renamed
