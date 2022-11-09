
with source as (

    select * from {{ source('raw_netsuite_sa', 'allowed_country_formats_by_edition_countries_map_history') }}

),

renamed as (

    select
        allowed_country_formats_by__id,
        country_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
