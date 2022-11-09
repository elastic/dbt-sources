
with source as (

    select * from {{ source('raw_marketo', 'activity_email_bounced_soft') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        campaign_run_id,
        category,
        choice_number,
        details,
        email,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        step_id,
        subcategory,
        test_variant,
        has_predictive,
        campaign,
        email_template_id,
        action_result

    from source

)

select * from renamed
