
with source as (

    select * from {{ source('raw_marketo', 'activity_remove_from_list') }}

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
        source,
        campaign

    from source

)

select * from renamed
