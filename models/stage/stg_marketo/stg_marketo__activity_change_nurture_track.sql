
with source as (

    select * from {{ source('raw_marketo', 'activity_change_nurture_track') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_id,
        new_track_id,
        previous_track_id,
        primary_attribute_value,
        primary_attribute_value_id,
        campaign

    from source

)

select * from renamed
