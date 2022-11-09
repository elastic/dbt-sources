
with source as (

    select * from {{ source('raw_netsuite_sa', 'promotion_code_subsidiary_map') }}

),

renamed as (

    select
        promotion_code_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
