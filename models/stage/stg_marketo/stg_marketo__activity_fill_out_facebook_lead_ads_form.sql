
with source as (

    select * from {{ source('raw_marketo', 'activity_fill_out_facebook_lead_ads_form') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_ad_form_name,
        lead_gen_id,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        lead_ad_campaign_name,
        lead_ad_set_name,
        lead_ad_id,
        lead_ad_name

    from source

)

select * from renamed
