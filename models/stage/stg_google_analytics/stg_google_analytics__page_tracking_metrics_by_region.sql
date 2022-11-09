
with source as (

    select * from {{ source('raw_google_analytics', 'page_tracking_metrics_by_region') }}

),

renamed as (

    select
        segment,
        as_of_date,
        continent,
        country,
        region,
        page_views,
        page_views_per_session,
        unique_page_views,
        page_url

    from source

)

select * from renamed
