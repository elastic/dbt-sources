
with source as (

    select * from {{ source('raw_google_analytics', 'session_metrics_by_continent') }}

),

renamed as (

    select
        segment,
        as_of_date,
        continent,
        sessions,
        bounces,
        bounce_rate,
        session_duration,
        avg_session_duration,
        hits

    from source

)

select * from renamed
