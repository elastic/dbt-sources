
with source as (

    select * from {{ source('raw_google_analytics', 'page_tracking_metrics_by_continent_ns') }}

),

renamed as (

    select
        page_url,
        as_of_date,
        continent,
        page_views,
        page_views_per_session,
        unique_page_views

    from source

)

select * from renamed
