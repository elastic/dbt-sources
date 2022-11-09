
with source as (

    select * from {{ source('raw_netsuite_sa', 'subsidiary_nexus_map') }}

),

renamed as (

    select
        nexus_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
