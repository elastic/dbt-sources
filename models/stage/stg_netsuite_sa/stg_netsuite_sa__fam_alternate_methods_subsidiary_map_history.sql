
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_alternate_methods_subsidiary_map_history') }}

),

renamed as (

    select
        fam_alternate_methods_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
