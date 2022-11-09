
with source as (

    select * from {{ source('raw_marketo', 'activity_merge_leads') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_id,
        master_updated,
        merge_ids,
        merge_source,
        merged_in_sales,
        primary_attribute_value,
        primary_attribute_value_id,
        action_result

    from source

)

select * from renamed
