
with source as (

    select * from {{ source('raw_marketo', 'activity_interesting_moment_history') }}

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
        action_result,
        partition_date

    from source

)

select * from renamed
