
with source as (

    select * from {{ source('raw_funnel', 'funnel_data_2015_06') }}

),

renamed as (

    select
        date,
        connection_type_code,
        currency,
        budget,
        supergeo,
        region,
        program,
        solution,
        traffic_source,
        impressions,
        clicks,
        cost,
        media_type,
        campaign,
        training_type,
        test_variant,
        test_mapping,
        test,
        stack_release_version,
        sfdc_campaign_name,
        salesforce_campaign_id,
        inmail,
        global_campaign_name,
        gic_campaign,
        gic_asset_type,
        country_code,
        content_type,
        audience,
        device__adwords,
        final_url__bing,
        ad_group_name,
        ad_group__twitter,
        ad_group_name__reddit,
        ad_group_name__bing,
        ad_name,
        ad_name__quora,
        ad_set_name__facebook_ads,
        ad_set_name__quora,
        device_type__bing,
        global_ad_name,
        search_type

    from source

)

select * from renamed
