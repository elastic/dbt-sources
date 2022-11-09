
with source as (

    select * from {{ source('raw_netsuite_sa', 'role_subsidiary_map') }}

),

renamed as (

    select
        role_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
