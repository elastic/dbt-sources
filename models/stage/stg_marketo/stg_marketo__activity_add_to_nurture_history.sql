
with source as (

    select * from {{ source('raw_marketo', 'activity_add_to_nurture_history') }}

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
        primary_attribute_value_id,
        track_id,
        campaign,
        action_result,
        partition_date

    from source

)

select * from renamed
