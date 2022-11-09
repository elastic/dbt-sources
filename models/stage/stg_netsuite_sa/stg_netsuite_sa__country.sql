
with source as (

    select * from {{ source('raw_netsuite_sa', 'country') }}

),

renamed as (

    select
        country_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_extid,
        country_id_0,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
