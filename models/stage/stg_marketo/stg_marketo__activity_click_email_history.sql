
with source as (

    select * from {{ source('raw_marketo', 'activity_click_email_history') }}

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
        is_mobile_device,
        is_predictive,
        lead_id,
        link,
        link_id,
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
        action_result,
        partition_date

    from source

)

select * from renamed
