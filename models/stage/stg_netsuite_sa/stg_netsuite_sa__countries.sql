
with source as (

    select * from {{ source('raw_netsuite_sa', 'countries') }}

),

renamed as (

    select
        country_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        name,
        short_name

    from source

)

select * from renamed
