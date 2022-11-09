
with source as (

    select * from {{ source('raw_marketo', 'activity_interesting_moment') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        date,
        description,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        source,
        campaign,
        descriptioon,
        action_result

    from source

)

select * from renamed
