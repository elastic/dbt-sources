
with source as (

    select * from {{ source('raw_strigo', 'ondemandcourse') }}

),

renamed as (

    select
        id,
        name,
        course_link,
        class_id,
        external_id,
        days_limit,
        activity_hours_limit,
        public_access_token,
        status,
        created_at

    from source

)

select * from renamed
