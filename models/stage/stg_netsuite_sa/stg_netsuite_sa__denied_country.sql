
with source as (

    select * from {{ source('raw_netsuite_sa', 'denied_country') }}

),

renamed as (

    select
        denied_country_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_id,
        date_created,
        date_deleted,
        denied_country_extid,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
