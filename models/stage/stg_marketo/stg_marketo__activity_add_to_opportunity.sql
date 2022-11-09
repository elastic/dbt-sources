
with source as (

    select * from {{ source('raw_marketo', 'activity_add_to_opportunity') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        is_primary,
        lead_id,
        primary_attribute_value,
        primary_attribute_value_id,
        role

    from source

)

select * from renamed
