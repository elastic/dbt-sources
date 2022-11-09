
with source as (

    select * from {{ source('raw_marketo', 'activity_open_sales_email') }}

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
        primary_attribute_value,
        primary_attribute_value_id,
        sent_by,
        template_id,
        campaign_run_id

    from source

)

select * from renamed
