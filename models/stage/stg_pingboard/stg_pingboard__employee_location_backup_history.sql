
with source as (

    select * from {{ source('raw_pingboard', 'employee_location_backup_history') }}

),

renamed as (

    select
        firstname,
        lastname,
        nickname,
        team,
        email,
        phone,
        city,
        country,
        latitude,
        longitude,
        startdate,
        coordinates,
        title,
        region

    from source

)

select * from renamed
