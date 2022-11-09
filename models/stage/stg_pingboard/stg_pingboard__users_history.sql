
with source as (

    select * from {{ source('raw_pingboard', 'users_history') }}

),

renamed as (

    select
        id,
        next_href,
        last_href,
        created_at,
        updated_at,
        roles,
        start_date,
        birth_date,
        time_zone,
        locale,
        first_name,
        last_name,
        nickname,
        email,
        phone,
        office_phone,
        job_title,
        reports_to_id,
        skills,
        interests,
        informal_job_title,
        city,
        state_country,
        locations,
        departments,
        bio,
        college,
        languages_spoken,
        groups

    from source

)

select * from renamed
