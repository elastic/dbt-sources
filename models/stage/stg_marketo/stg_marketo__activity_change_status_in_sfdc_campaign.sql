
with source as (

    select * from {{ source('raw_marketo', 'activity_change_status_in_sfdc_campaign') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_id,
        new_status,
        old_status,
        primary_attribute_value,
        primary_attribute_value_id,
        campaign

    from source

)

select * from renamed
