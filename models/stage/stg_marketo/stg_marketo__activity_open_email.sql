
with source as (

    select * from {{ source('raw_marketo', 'activity_open_email') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        campaign_run_id,
        choice_number,
        device,
        has_predictive,
        is_mobile_device,
        lead_id,
        platform,
        primary_attribute_value,
        primary_attribute_value_id,
        step_id,
        test_variant,
        user_agent,
        campaign,
        email_template_id,
        bot_activity_pattern,
        is_bot_activity,
        action_result

    from source

)

select * from renamed
