
with source as (

    select * from {{ source('raw_pingboard', 'employee_location') }}

),

renamed as (

    select
        firstname,
        lastname,
        nickname,
        team,
        title,
        email,
        phone,
        region,
        city,
        country,
        latitude,
        longitude,
        startdate,
        coordinates

    from source

)

select * from renamed
