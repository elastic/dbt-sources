
with source as (

    select * from {{ source('raw_marketo', 'activity_unsubscribe_email') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        campaign_run_id,
        client_ip_address,
        form_fields,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        query_parameters,
        referrer_url,
        user_agent,
        webform_id,
        webpage_id,
        campaign,
        test_variant,
        has_predictive,
        email_template_id,
        action_result

    from source

)

select * from renamed
