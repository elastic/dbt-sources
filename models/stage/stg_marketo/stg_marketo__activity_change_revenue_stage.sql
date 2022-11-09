
with source as (

    select * from {{ source('raw_marketo', 'activity_change_revenue_stage') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_id,
        new_stage,
        new_stage_id,
        old_stage,
        old_stage_id,
        primary_attribute_value,
        primary_attribute_value_id,
        reason,
        campaign

    from source

)

select * from renamed
