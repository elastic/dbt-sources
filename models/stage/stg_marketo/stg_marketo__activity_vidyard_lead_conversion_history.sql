
with source as (

    select * from {{ source('raw_marketo', 'activity_vidyard_lead_conversion_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        email,
        embed_url,
        lead_id,
        player_name,
        primary_attribute_value,
        primary_attribute_value_id,
        partition_date

    from source

)

select * from renamed
