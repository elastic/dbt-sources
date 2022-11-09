
with source as (

    select * from {{ source('raw_marketo', 'activity_click_rtp_call_to_action') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id

    from source

)

select * from renamed
