
with source as (

    select * from {{ source('raw_marketo', 'activity_update_opportunity') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        data_value_changes,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id

    from source

)

select * from renamed