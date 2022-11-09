
with source as (

    select * from {{ source('raw_netsuite', 'allowed_country_formats_by_ed') }}

),

renamed as (

    select
        allowed_country_formats_by__ex,
        allowed_country_formats_by__id,
        date_created,
        edition,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
