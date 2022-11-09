
with source as (

    select * from {{ source('raw_marketo', 'activity_call_webhook') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        error_type,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        response,
        campaign

    from source

)

select * from renamed
