
with source as (

    select * from {{ source('raw_clearbit', 'company_backup') }}

),

renamed as (

    select
        id,
        name,
        domain,
        indexedat,
        type,
        category_industry,
        category_industrygroup,
        category_naicscode,
        category_sector,
        category_siccode,
        category_subindustry,
        crunchbase_handle,
        description,
        domainaliases,
        emailprovider,
        facebook_handle,
        foundedyear,
        geo_city,
        geo_country,
        geo_countrycode,
        geo_lat,
        geo_lng,
        geo_postalcode,
        geo_state,
        geo_statecode,
        geo_streetname,
        geo_streetnumber,
        geo_subpremise,
        identifiers_usein,
        legalname,
        linkedin_handle,
        location,
        logo,
        metrics_alexaglobalrank,
        metrics_alexausrank,
        metrics_annualrevenue,
        metrics_employees,
        metrics_employeesrange,
        metrics_estimatedannualrevenue,
        metrics_fiscalyearend,
        metrics_marketcap,
        metrics_raised,
        parent_domain,
        phone,
        site_emailaddresses,
        site_phonenumbers,
        tags,
        tech,
        ticker,
        timezone,
        twitter_avatar,
        twitter_bio,
        twitter_followers,
        twitter_following,
        twitter_handle,
        twitter_id,
        twitter_location,
        twitter_site,
        utcoffset,
        facebook_likes

    from source

)

select * from renamed
