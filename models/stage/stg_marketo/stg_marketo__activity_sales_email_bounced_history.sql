
with source as (

    select * from {{ source('raw_marketo', 'activity_sales_email_bounced_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign,
        campaign_id,
        category,
        details,
        email,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        sent_by,
        subcategory,
        partition_date

    from source

)

select * from renamed
