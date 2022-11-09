
with source as (

    select * from {{ source('raw_marketo', 'activity_click_sales_email') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign,
        campaign_id,
        lead_id,
        link,
        primary_attribute_value,
        primary_attribute_value_id,
        sent_by,
        template_id

    from source

)

select * from renamed
