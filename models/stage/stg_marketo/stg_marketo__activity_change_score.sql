
with source as (

    select * from {{ source('raw_marketo', 'activity_change_score') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        change_value,
        lead_id,
        new_value,
        old_value,
        primary_attribute_value,
        primary_attribute_value_id,
        priority,
        reason,
        relative_score,
        relative_urgency,
        urgency,
        campaign

    from source

)

select * from renamed
