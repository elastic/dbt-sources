
with source as (

    select * from {{ source('raw_netsuite_sa', 'territory') }}

),

renamed as (

    select
        territory_id,
        _fivetran_synced,
        date_last_modified,
        description,
        is_inactive,
        name,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
