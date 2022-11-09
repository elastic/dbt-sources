
with source as (

    select * from {{ source('raw_marketo', 'activity_click_link_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        client_ip_address,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        query_parameters,
        referrer_url,
        user_agent,
        webpage_id,
        campaign,
        action_result,
        partition_date

    from source

)

select * from renamed
