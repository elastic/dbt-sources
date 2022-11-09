
with source as (

    select * from {{ source('raw_google_analytics', 'user_metrics_by_city') }}

),

renamed as (

    select
        segment,
        as_of_date,
        continent,
        country,
        region,
        city,
        users,
        new_users,
        percent_new_sessions,
        sessions_per_user

    from source

)

select * from renamed
