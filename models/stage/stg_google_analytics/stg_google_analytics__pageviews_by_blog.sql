
with source as (

    select * from {{ source('raw_google_analytics', 'pageviews_by_blog') }}

),

renamed as (

    select
        pageview_date,
        modified_url,
        url_language,
        url_sans_language,
        url_title,
        pageviews

    from source

)

select * from renamed
