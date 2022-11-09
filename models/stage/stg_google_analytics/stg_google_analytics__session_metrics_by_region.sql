
with source as (

    select * from {{ source('raw_google_analytics', 'session_metrics_by_region') }}

),

renamed as (

    select
        segment,
        as_of_date,
        continent,
        country,
        region,
        sessions,
        bounces,
        bounce_rate,
        session_duration,
        avg_session_duration,
        hits

    from source

)

select * from renamed
