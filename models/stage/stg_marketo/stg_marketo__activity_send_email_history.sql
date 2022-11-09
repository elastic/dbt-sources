
with source as (

    select * from {{ source('raw_marketo', 'activity_send_email_history') }}

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
        has_predictive,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        step_id,
        test_variant,
        campaign,
        email_template_id,
        choice_nuumber,
        choice_nnumber,
        campaign_ruun_id,
        action_result,
        partition_date

    from source

)

select * from renamed
