
with source as (

    select * from {{ source('raw_marketo', 'activity_visit_webpage_history') }}

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
        program_name,
        query_parameters,
        referrer_url,
        search_engine,
        search_query,
        user_agent,
        webpage_url,
        campaign,
        program_type,
        client_ip_adddress,
        action_result,
        partition_date

    from source

)

select * from renamed
