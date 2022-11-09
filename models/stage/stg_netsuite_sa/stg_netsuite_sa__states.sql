
with source as (

    select * from {{ source('raw_netsuite_sa', 'states') }}

),

renamed as (

    select
        state_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_id,
        date_deleted,
        name,
        short_name

    from source

)

select * from renamed
