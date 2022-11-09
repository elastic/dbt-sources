
with source as (

    select * from {{ source('raw_marketo', 'activity_sync_lead_to_sfdc') }}

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
        campaign

    from source

)

select * from renamed
