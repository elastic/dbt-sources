
with source as (

    select * from {{ source('raw_netsuite_sa', 'promotion_code_subsidiary_map_history') }}

),

renamed as (

    select
        promotion_code_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
