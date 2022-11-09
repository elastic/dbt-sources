
with source as (

    select * from {{ source('raw_marketo', 'activity_delete_lead') }}

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
        action_result

    from source

)

select * from renamed
